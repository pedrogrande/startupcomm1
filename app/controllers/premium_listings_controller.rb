class PremiumListingsController < ApplicationController
  before_action :set_premium_listing, only: [:show, :edit, :update, :destroy]

  # GET /premium_listings
  # GET /premium_listings.json
  def index
    @premium_listings = PremiumListing.all
  end

  # GET /premium_listings/1
  # GET /premium_listings/1.json
  def show
  end

  # GET /premium_listings/new
  def new
    @premium_listing = PremiumListing.new
  end

  # GET /premium_listings/1/edit
  def edit
  end

  # POST /premium_listings
  # POST /premium_listings.json
  def create
    @premium_listing = PremiumListing.new(premium_listing_params)

    respond_to do |format|
      if @premium_listing.save
        format.html { redirect_to @premium_listing, notice: 'Premium listing was successfully created.' }
        format.json { render :show, status: :created, location: @premium_listing }
      else
        format.html { render :new }
        format.json { render json: @premium_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /premium_listings/1
  # PATCH/PUT /premium_listings/1.json
  def update
    respond_to do |format|
      if @premium_listing.update(premium_listing_params)
        format.html { redirect_to @premium_listing, notice: 'Premium listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @premium_listing }
      else
        format.html { render :edit }
        format.json { render json: @premium_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /premium_listings/1
  # DELETE /premium_listings/1.json
  def destroy
    @premium_listing.destroy
    respond_to do |format|
      format.html { redirect_to premium_listings_url, notice: 'Premium listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_premium_listing
      @premium_listing = PremiumListing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def premium_listing_params
      params.require(:premium_listing).permit(:user_id, :startup_id, :price, :expiry_date)
    end
end
