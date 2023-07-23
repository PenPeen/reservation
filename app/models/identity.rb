class Identity < ApplicationRecord
  has_secure_password

  has_one :reservation_admin_role
  has_one :reservation_general_role
end
