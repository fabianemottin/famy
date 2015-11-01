require 'test_helper'

class PLaylistsControllerTest < ActionController::TestCase
  setup do
    @p_laylist = p_laylists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p_laylists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p_laylist" do
    assert_difference('PLaylist.count') do
      post :create, p_laylist: { playlistname: @p_laylist.playlistname }
    end

    assert_redirected_to p_laylist_path(assigns(:p_laylist))
  end

  test "should show p_laylist" do
    get :show, id: @p_laylist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p_laylist
    assert_response :success
  end

  test "should update p_laylist" do
    patch :update, id: @p_laylist, p_laylist: { playlistname: @p_laylist.playlistname }
    assert_redirected_to p_laylist_path(assigns(:p_laylist))
  end

  test "should destroy p_laylist" do
    assert_difference('PLaylist.count', -1) do
      delete :destroy, id: @p_laylist
    end

    assert_redirected_to p_laylists_path
  end
end
