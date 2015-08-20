class Category < ActiveRecord::Base
	has_many :startup_categories
	has_many :startups, through: :startup_categories
end
