require 'test_helper'

class FilmListingsControllerTest < ActionController::TestCase
  setup do
    @film_listing = film_listings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:film_listings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create film_listing" do
    assert_difference('FilmListing.count') do
      post :create, film_listing: { film_category_id: @film_listing.film_category_id, imagelink: @film_listing.imagelink, infolink: @film_listing.infolink, language_id: @film_listing.language_id, name: @film_listing.name, videolink: @film_listing.videolink }
    end

    assert_redirected_to film_listing_path(assigns(:film_listing))
  end

  test "should show film_listing" do
    get :show, id: @film_listing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @film_listing
    assert_response :success
  end

  test "should update film_listing" do
    patch :update, id: @film_listing, film_listing: { film_category_id: @film_listing.film_category_id, imagelink: @film_listing.imagelink, infolink: @film_listing.infolink, language_id: @film_listing.language_id, name: @film_listing.name, videolink: @film_listing.videolink }
    assert_redirected_to film_listing_path(assigns(:film_listing))
  end

  test "should destroy film_listing" do
    assert_difference('FilmListing.count', -1) do
      delete :destroy, id: @film_listing
    end

    assert_redirected_to film_listings_path
  end
end
