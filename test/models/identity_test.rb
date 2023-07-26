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
require "test_helper"

class IdentityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
