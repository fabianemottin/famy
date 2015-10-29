require 'test_helper'

class MusicListingsControllerTest < ActionController::TestCase
  setup do
    @music_listing = music_listings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:music_listings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create music_listing" do
    assert_difference('MusicListing.count') do
      post :create, music_listing: { imagelink: @music_listing.imagelink, infolink: @music_listing.infolink, language_id: @music_listing.language_id, music_category_id: @music_listing.music_category_id, name: @music_listing.name, videolink: @music_listing.videolink }
    end

    assert_redirected_to music_listing_path(assigns(:music_listing))
  end

  test "should show music_listing" do
    get :show, id: @music_listing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @music_listing
    assert_response :success
  end

  test "should update music_listing" do
    patch :update, id: @music_listing, music_listing: { imagelink: @music_listing.imagelink, infolink: @music_listing.infolink, language_id: @music_listing.language_id, music_category_id: @music_listing.music_category_id, name: @music_listing.name, videolink: @music_listing.videolink }
    assert_redirected_to music_listing_path(assigns(:music_listing))
  end

  test "should destroy music_listing" do
    assert_difference('MusicListing.count', -1) do
      delete :destroy, id: @music_listing
    end

    assert_redirected_to music_listings_path
  end
end
