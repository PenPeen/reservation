module Admin
  class UsersController < Admin::ApplicationController
    def index
      @identities =
        Identity.includes(:reservation_admin_role, :reservation_general_role)
                .where.not(reservation_admin_role: { id: nil })
                .or(Identity.where.not(reservation_general_role: { id: nil }))
    end
  end
end
