class AdminController < ApplicationController
  def index
  	unless current_user.has_role? :admin
  		redirect_to root_path, notice: 'You are not authorized to see this page'
  	end
  end
end
