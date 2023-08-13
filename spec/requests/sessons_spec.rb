require 'rails_helper'

RSpec.describe SessionsController, type: :request do
  describe 'GET /new' do
    it 'renders the new session page' do
      get login_path
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST /create' do
    context 'with valid credentials' do
      context 'when user is an admin' do
        let(:identity) { create(:identity, :with_admin_role) }

        it 'assigns a session and redirects to admin path' do
          login(identity)
          expect(response).to redirect_to(admin_path)
        end
      end

      context 'when user is a general user' do
        let(:identity) { create(:identity, :with_general_role) }

        it 'assigns a session and redirects to general path' do
          login(identity)
          expect(response).to redirect_to(general_path)
        end
      end

      context 'when user has no role' do
        let(:identity) { create(:identity) }

        it 'redirects to login path with an alert' do
          login(identity)
          expect(response).to redirect_to(login_path)
          expect(flash[:alert]).to eq('このIDにはロールが割り当てられていません。')
        end
      end
    end

    context 'with invalid credentials' do
      let(:identity) { create(:identity, :with_general_role, password: "P@ssw0rd!") }

      it 'redirects to login with an alert' do
        post login_path, params: { email: identity.email, password: 'invalid_P@ssw0rd!' }
        expect(response).to redirect_to(login_path)
        expect(flash[:alert]).to eq('メールアドレスまたはパスワードが無効です。')
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'deletes the session and redirects to login' do
      delete logout_path
      expect(response).to redirect_to(login_path)
    end
  end
end
