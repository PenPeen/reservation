module Admin
  class UsersController < Admin::ApplicationController
    before_action :set_user, only: %i[show]

    def index
      @identities =
        Identity.includes(:reservation_admin_role, :reservation_general_role)
                .where.not(reservation_admin_role: { id: nil })
                .or(Identity.where.not(reservation_general_role: { id: nil }))
                .order(:created_at)
    end

    def show
    end

    private

    def set_user
      @user = Identity.find(params[:id])
    end
  end
end
