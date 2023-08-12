# == Schema Information
#
# Table name: reservation_admin_roles
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  identity_id :bigint           not null
#
# Indexes
#
#  index_reservation_admin_roles_on_identity_id  (identity_id)
#
# Foreign Keys
#
#  fk_rails_...  (identity_id => identities.id)
#
FactoryBot.define do
  factory :reservation_admin_role do
    association :identity, factory: :identity
  end
end
