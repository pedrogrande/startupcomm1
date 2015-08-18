class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  def index
  	@new_profiles = Profile.last(5)
  	@upcoming_events = Event.future_events.chron_order.limit(5)
  end

end
