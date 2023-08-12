FactoryBot.define do
  factory :reservation_admin_role do
    association :identity, factory: :identity
  end
end
