# == Schema Information
#
# Table name: events
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  start_time     :datetime
#  end_time       :datetime
#  name           :string
#  description    :text
#  location_name  :string
#  street_address :string
#  suburb         :string
#  state          :string
#  postcode       :string
#  country        :string
#  website        :string
#  hashtag        :string
#  organiser      :string
#  logo           :string
#  banner         :string
#  price          :decimal(, )
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
