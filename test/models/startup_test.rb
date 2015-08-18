# == Schema Information
#
# Table name: startups
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  logo        :string
#  website     :string
#  owner_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  slug        :string
#  latitude    :float
#  longitude   :float
#  street      :string
#  suburb      :string
#  state       :string
#  postcode    :string
#  country     :string
#

require 'test_helper'

class StartupTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
