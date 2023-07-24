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
FactoryBot.define do
  factory :resource do
    name { "MyString" }
    note { "MyString" }
  end
end
