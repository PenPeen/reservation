FactoryBot.define do
  factory :reservation_general_role do
    association :identity, factory: :identity
  end
end
