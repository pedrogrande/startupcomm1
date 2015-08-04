class Startup < ActiveRecord::Base
	has_many :startup_users
	has_many :users, through: :startup_users

	acts_as_taggable
	extend FriendlyId
	friendly_id :slug_candidates, use: :slugged

	def slug_candidates
		[
      :name,
      [:name, :logo]
    ]
	end
end
