class Resource < ApplicationRecord
  has_many :reservations
  has_many :identities, through: :reservations
end
