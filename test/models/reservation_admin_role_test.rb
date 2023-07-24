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
require "test_helper"

class ReservationAdminRoleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
