class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :startup

  def self.latest_five
  	order(created_at: :desc).limit(5)
  end
end
