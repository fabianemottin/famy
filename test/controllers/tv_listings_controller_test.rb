require 'test_helper'

class TvListingsControllerTest < ActionController::TestCase
  setup do
    @tv_listing = tv_listings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tv_listings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tv_listing" do
    assert_difference('TvListing.count') do
      post :create, tv_listing: { imagelink: @tv_listing.imagelink, infolink: @tv_listing.infolink, language_id: @tv_listing.language_id, name: @tv_listing.name, tv_category_id: @tv_listing.tv_category_id, videolink: @tv_listing.videolink }
    end

    assert_redirected_to tv_listing_path(assigns(:tv_listing))
  end

  test "should show tv_listing" do
    get :show, id: @tv_listing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tv_listing
    assert_response :success
  end

  test "should update tv_listing" do
    patch :update, id: @tv_listing, tv_listing: { imagelink: @tv_listing.imagelink, infolink: @tv_listing.infolink, language_id: @tv_listing.language_id, name: @tv_listing.name, tv_category_id: @tv_listing.tv_category_id, videolink: @tv_listing.videolink }
    assert_redirected_to tv_listing_path(assigns(:tv_listing))
  end

  test "should destroy tv_listing" do
    assert_difference('TvListing.count', -1) do
      delete :destroy, id: @tv_listing
    end

    assert_redirected_to tv_listings_path
  end
end
