class MapsController < ApplicationController
  def index
  	@startups = Startup.where('latitude != ?', 0)
  end
end
