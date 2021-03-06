class StartupsController < ApplicationController
  before_action :set_startup, only: [:map, :join, :leave, :show, :edit, :update, :destroy]
   respond_to :html, :js
  # load_and_authorize_resource
  def map
    
  end
  def leave
    @startup.users.delete(user)
    redirect_to :back
  end

  def join
    @startup.users << current_user
    redirect_to :back
  end
  # GET /startups
  # GET /startups.json
  def index
    if params[:tag]
      @startups = Startup.tagged_with(params[:tag])
    elsif params[:category]
      @category = Category.find(params[:category])
      @startups = @category.startups
    elsif params[:search]
      @startups = Startup.search(params[:search])
    
    else
      @startups = Startup.all
    end
    @categories = Category.all
    if params[:categories]
      @selected_category_names = params[:categories]
      @selected_categories = []
      @selected_category_names.each do |category_name| 
        @selected_categories << Category.find_by(name: category_name)
      end
      @startups = []
      @selected_categories.each do |category|
        @startups = @startups + category.startups
      end


    end
  end

  # GET /startups/1
  # GET /startups/1.json
  def show
    @owner_profile = User.find(@startup.owner_id).profile
    @locations = @startup.locations
    @reviews = @startup.reviews
    @latest_reviews = @startup.reviews.latest_five
    
  end

  # GET /startups/new
  def new
    @startup = Startup.new
  end

  # GET /startups/1/edit
  def edit
  end

  # POST /startups
  # POST /startups.json
  def create
    @startup = Startup.new(startup_params)
    @startup.owner_id = current_user.id
    @startup.users << current_user
    respond_to do |format|
      if @startup.save
        format.html { redirect_to @startup, notice: 'Startup was successfully created.' }
        format.json { render :show, status: :created, location: @startup }
      else
        format.html { render :new }
        format.json { render json: @startup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /startups/1
  # PATCH/PUT /startups/1.json
  def update
    respond_to do |format|
      if @startup.update(startup_params)
        format.html { redirect_to @startup, notice: 'Startup was successfully updated.' }
        format.json { render :show, status: :ok, location: @startup }
      else
        format.html { render :edit }
        format.json { render json: @startup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /startups/1
  # DELETE /startups/1.json
  def destroy
    @startup.destroy
    respond_to do |format|
      format.html { redirect_to startups_url, notice: 'Startup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_startup
      @startup = Startup.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def startup_params
      params.require(:startup).permit(:street, :suburb, :state, :postcode, :country, :tag_list, :name, :description, :logo, :website, :owner_id, :locations_attributes => [:id, :name, :street, :suburb, :state, :postcode, :country, :_destroy], category_ids: [])
    end
end
