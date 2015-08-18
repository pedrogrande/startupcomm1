# == Schema Information
#
# Table name: questions
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  title           :string
#  description     :text
#  views           :integer
#  answered_at     :datetime
#  selected_answer :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  slug            :string
#

require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
