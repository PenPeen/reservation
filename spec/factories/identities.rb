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
# Indexes
#
#  index_identities_on_email  (email) UNIQUE
#
FactoryBot.define do
  factory :identity do
    name { 'test_user' }
    sequence(:email) { |n| "user_#{n}@example.com" }
    password { 'password' }

    trait :with_general_role do
      after(:create) do |identity|
        create(:reservation_general_role, identity:)
      end
    end

    trait :with_admin_role do
      after(:create) do |identity|
        create(:reservation_admin_role, identity:)
      end
    end
  end
end
