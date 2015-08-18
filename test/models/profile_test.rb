# == Schema Information
#
# Table name: profiles
#
#  id                :integer          not null, primary key
#  name              :string
#  profile_pic       :string
#  bio               :text
#  city              :string
#  country           :string
#  twitter           :string
#  linkedin          :string
#  website           :string
#  user_id           :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  slug              :string
#  reputation_points :integer
#

require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
