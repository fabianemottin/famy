require 'test_helper'

class TvCategoriesControllerTest < ActionController::TestCase
  setup do
    @tv_category = tv_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tv_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tv_category" do
    assert_difference('TvCategory.count') do
      post :create, tv_category: { category: @tv_category.category }
    end

    assert_redirected_to tv_category_path(assigns(:tv_category))
  end

  test "should show tv_category" do
    get :show, id: @tv_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tv_category
    assert_response :success
  end

  test "should update tv_category" do
    patch :update, id: @tv_category, tv_category: { category: @tv_category.category }
    assert_redirected_to tv_category_path(assigns(:tv_category))
  end

  test "should destroy tv_category" do
    assert_difference('TvCategory.count', -1) do
      delete :destroy, id: @tv_category
    end

    assert_redirected_to tv_categories_path
  end
end
