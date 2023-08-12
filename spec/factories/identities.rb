FactoryBot.define do
  factory :identity do
    name { 'test_user' }
    sequence(:email) { |n| "user_#{n}@example.com" }
    password { 'password' }

    trait :with_general_role do
      after(:create) do | identity |
        create(:reservation_general_role, identity:)
      end
    end

    trait :with_admin_role do
      after(:create) do | identity |
        create(:reservation_admin_role, identity:)
      end
    end
  end
end
