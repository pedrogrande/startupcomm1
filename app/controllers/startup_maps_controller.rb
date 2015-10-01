class StartupMapsController < ApplicationController
	skip_before_action :authenticate_user!

  respond_to :html, :js

  def map
    @startup = Startup.friendly.find(params[:id])
    respond_to do |format|
      # format.html
      format.js
    end
  end

  def index
  	@startups = Startup.all
    @hash = Gmaps4rails.build_markers(@startups) do |startup, marker|
      marker.lat startup.latitude
      marker.lng startup.longitude
      marker.json({:id => startup.id })
      marker.infowindow render_to_string(:partial => "/startups/infowindow", :locals => { :object => startup})
    end
  end
end
