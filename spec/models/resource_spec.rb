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
require 'rails_helper'

RSpec.describe Resource, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
