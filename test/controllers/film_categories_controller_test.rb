require 'test_helper'

class FilmCategoriesControllerTest < ActionController::TestCase
  setup do
    @film_category = film_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:film_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create film_category" do
    assert_difference('FilmCategory.count') do
      post :create, film_category: { category: @film_category.category }
    end

    assert_redirected_to film_category_path(assigns(:film_category))
  end

  test "should show film_category" do
    get :show, id: @film_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @film_category
    assert_response :success
  end

  test "should update film_category" do
    patch :update, id: @film_category, film_category: { category: @film_category.category }
    assert_redirected_to film_category_path(assigns(:film_category))
  end

  test "should destroy film_category" do
    assert_difference('FilmCategory.count', -1) do
      delete :destroy, id: @film_category
    end

    assert_redirected_to film_categories_path
  end
end
