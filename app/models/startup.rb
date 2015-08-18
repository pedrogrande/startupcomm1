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

class Startup < ActiveRecord::Base
	has_many :locations
	has_many :startup_users
	has_many :users, through: :startup_users
	accepts_nested_attributes_for :locations

	acts_as_taggable
	extend FriendlyId
	friendly_id :slug_candidates, use: :slugged

	def slug_candidates
		[
      :name,
      [:name, :logo]
    ]
	end

	geocoded_by :full_street_address
	after_validation :geocode

	def full_street_address
		[street, suburb, state, postcode, country].compact.join(', ')
	end

	def is_owner?(user)
		self.owner_id == user.id
	end
end
