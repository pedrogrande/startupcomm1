# == Schema Information
#
# Table name: startup_users
#
#  id         :integer          not null, primary key
#  startup_id :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class StartupUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
