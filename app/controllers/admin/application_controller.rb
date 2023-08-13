module Admin
  class ApplicationController < ApplicationController
    layout 'admin'
    before_action :authenticate_admin

    private

    def authenticate_admin
      if session[:reservation_admin]
        @current_user = Identity.find(session[:reservation_admin])
      else
        redirect_to login_path, alert: '管理者アカウントでログインしてください。'
      end
    end
  end
end
