# app/controllers/sessions_controller.rb
class SessionsController < ApplicationController
  def new
  end

  def create
    identity = Identity.find_by(email: params[:email])
    if identity&.authenticate(params[:password])
      if identity.reservation_admin_role
        session[:reservation_admin] = identity.id
        redirect_to admin_path
      elsif identity.reservation_general_role
        session[:reservation_general] = identity.id
        redirect_to general_path
      else
        redirect_to login_path, alert: 'このIDにはロールが割り当てられていません。'
      end
    else
      redirect_to login_path, alert: 'メールアドレスまたはパスワードが無効です。'
    end
  end

  def destroy
    session.delete(:reservation_admin)
    session.delete(:reservation_general)
    redirect_to login_path
  end
end
