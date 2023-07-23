class Identity < ApplicationRecord
  has_secure_password

  has_one :reservation_admin_role
end
