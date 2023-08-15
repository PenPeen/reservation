# == Schema Information
#
# Table name: reservations
#
#  id          :bigint           not null, primary key
#  end_time    :datetime
#  start_time  :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  identity_id :bigint           not null
#  resource_id :bigint           not null
#
# Indexes
#
#  index_reservations_on_identity_id  (identity_id)
#  index_reservations_on_resource_id  (resource_id)
#
# Foreign Keys
#
#  fk_rails_...  (identity_id => identities.id)
#  fk_rails_...  (resource_id => resources.id)
#
FactoryBot.define do
  factory :reservation do
    identity { nil }
    resource { nil }
    start_time { "2023-07-24 12:38:58" }
    end_time { "2023-07-24 12:38:58" }
  end
end
