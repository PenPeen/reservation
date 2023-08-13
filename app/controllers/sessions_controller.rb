class SessionsController < ApplicationController
  def new
  end

  def create
    identity = authenticate_user(params[:email], params[:password])

    if identity
      assign_session_and_redirect(identity)
    else
      redirect_to login_path, alert: 'メールアドレスまたはパスワードが無効です。'
    end
  end

  def destroy
    session.delete(:reservation_admin)
    session.delete(:reservation_general)
    # OPTIMIZED: turboの影響でFlashが正しく表示できていないので、修正する
    redirect_to login_path, notice: 'ログアウトしました。'
  end

  private

  def authenticate_user(email, password)
    identity = Identity.find_by(email:)
    return identity if identity&.authenticate(password)
  end

  def assign_session_and_redirect(identity)
    if identity.reservation_admin_role
      session[:reservation_admin] = identity.id
      redirect_to admin_root_path
    elsif identity.reservation_general_role
      session[:reservation_general] = identity.id
      redirect_to general_root_path
    else
      redirect_to login_path, alert: 'このIDにはロールが割り当てられていません。'
    end
  end
end
