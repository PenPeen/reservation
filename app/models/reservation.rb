class Reservation < ApplicationRecord
  belongs_to :identity
  belongs_to :resource
end
