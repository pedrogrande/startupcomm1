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
