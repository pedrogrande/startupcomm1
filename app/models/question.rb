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

class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers

  acts_as_taggable
	extend FriendlyId
	friendly_id :title, use: :slugged
	acts_as_votable

	def self.latest_answered_questions
		order(answered_at: :desc)
	end
end
