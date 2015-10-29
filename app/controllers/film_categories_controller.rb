class FilmCategoriesController < ApplicationController
  before_action :set_film_category, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @film_categories = FilmCategory.all
    respond_with(@film_categories)
  end

  def show
    respond_with(@film_category)
  end

  def new
    @film_category = FilmCategory.new
    respond_with(@film_category)
  end

  def edit
  end

  def create
    @film_category = FilmCategory.new(film_category_params)
    @film_category.save
    respond_with(@film_category)
  end

  def update
    @film_category.update(film_category_params)
    respond_with(@film_category)
  end

  def destroy
    @film_category.destroy
    respond_with(@film_category)
  end

  private
    def set_film_category
      @film_category = FilmCategory.find(params[:id])
    end

    def film_category_params
      params.require(:film_category).permit(:category)
    end
end
