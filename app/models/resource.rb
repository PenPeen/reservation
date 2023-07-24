# == Schema Information
#
# Table name: resources
#
#  id         :bigint           not null, primary key
#  name       :string(50)
#  note       :string(1024)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Resource < ApplicationRecord
  has_many :reservations
  has_many :identities, through: :reservations
end
