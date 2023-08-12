# == Schema Information
#
# Table name: identities
#
#  id              :bigint           not null, primary key
#  email           :string(256)
#  name            :string(50)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Identity < ApplicationRecord
  has_secure_password

  has_one :reservation_admin_role, dependent: :destroy
  has_one :reservation_general_role, dependent: :destroy

  has_many :reservations, dependent: :destroy
  has_many :resources, through: :reservations

  validates :email, uniqueness: true
end
