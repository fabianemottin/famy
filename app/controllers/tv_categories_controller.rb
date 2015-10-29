class TvCategoriesController < ApplicationController
  before_action :set_tv_category, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tv_categories = TvCategory.all
    respond_with(@tv_categories)
  end

  def show
    respond_with(@tv_category)
  end

  def new
    @tv_category = TvCategory.new
    respond_with(@tv_category)
  end

  def edit
  end

  def create
    @tv_category = TvCategory.new(tv_category_params)
    @tv_category.save
    respond_with(@tv_category)
  end

  def update
    @tv_category.update(tv_category_params)
    respond_with(@tv_category)
  end

  def destroy
    @tv_category.destroy
    respond_with(@tv_category)
  end

  private
    def set_tv_category
      @tv_category = TvCategory.find(params[:id])
    end

    def tv_category_params
      params.require(:tv_category).permit(:category)
    end
end
