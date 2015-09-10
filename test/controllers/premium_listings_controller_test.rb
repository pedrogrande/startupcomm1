require 'test_helper'

class PremiumListingsControllerTest < ActionController::TestCase
  setup do
    @premium_listing = premium_listings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:premium_listings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create premium_listing" do
    assert_difference('PremiumListing.count') do
      post :create, premium_listing: { expiry_date: @premium_listing.expiry_date, price: @premium_listing.price, startup_id: @premium_listing.startup_id, user_id: @premium_listing.user_id }
    end

    assert_redirected_to premium_listing_path(assigns(:premium_listing))
  end

  test "should show premium_listing" do
    get :show, id: @premium_listing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @premium_listing
    assert_response :success
  end

  test "should update premium_listing" do
    patch :update, id: @premium_listing, premium_listing: { expiry_date: @premium_listing.expiry_date, price: @premium_listing.price, startup_id: @premium_listing.startup_id, user_id: @premium_listing.user_id }
    assert_redirected_to premium_listing_path(assigns(:premium_listing))
  end

  test "should destroy premium_listing" do
    assert_difference('PremiumListing.count', -1) do
      delete :destroy, id: @premium_listing
    end

    assert_redirected_to premium_listings_path
  end
end
