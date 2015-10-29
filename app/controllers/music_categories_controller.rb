class MusicCategoriesController < ApplicationController
  before_action :set_music_category, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @music_categories = MusicCategory.all
    respond_with(@music_categories)
  end

  def show
    respond_with(@music_category)
  end

  def new
    @music_category = MusicCategory.new
    respond_with(@music_category)
  end

  def edit
  end

  def create
    @music_category = MusicCategory.new(music_category_params)
    @music_category.save
    respond_with(@music_category)
  end

  def update
    @music_category.update(music_category_params)
    respond_with(@music_category)
  end

  def destroy
    @music_category.destroy
    respond_with(@music_category)
  end

  private
    def set_music_category
      @music_category = MusicCategory.find(params[:id])
    end

    def music_category_params
      params.require(:music_category).permit(:category)
    end
end
