class Identity < ApplicationRecord
  has_secure_password

  has_one :reservation_admin_role, dependent: :destroy
  has_one :reservation_general_role, dependent: :destroy
end
