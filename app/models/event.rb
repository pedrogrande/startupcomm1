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

class Event < ActiveRecord::Base
  belongs_to :user
  
  validate :starts_in_future, :starts_before_ends

  def starts_in_future
  	if start_time.present? && start_time < DateTime.now
  		errors.add(:starts, "Cannot be in the past")
  	end
  end

  def starts_before_ends
  	if start_time > end_time
  		errors.add(:ends, "Cannot be before start date/time")
  	end
  end

  def self.future_events
  	where('start_time >= ?', DateTime.now)
  end

  def self.chron_order
  	order(start_time: :asc)
  end


end
