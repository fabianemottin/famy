class FilmListingsController < ApplicationController
  before_action :set_film_listing, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @film_listings = FilmListing.all
    respond_with(@film_listings)
  end

  def show
    respond_with(@film_listing)
  end

  def new
    @film_listing = FilmListing.new
    respond_with(@film_listing)
  end

  def edit
  end

  def create
    @film_listing = FilmListing.new(film_listing_params)
    @film_listing.save
    respond_with(@film_listing)
  end

  def update
    @film_listing.update(film_listing_params)
    respond_with(@film_listing)
  end

  def destroy
    @film_listing.destroy
    respond_with(@film_listing)
  end

  private
    def set_film_listing
      @film_listing = FilmListing.find(params[:id])
    end

    def film_listing_params
      params.require(:film_listing).permit(:name, :videolink, :imagelink, :infolink, :language_id, :film_category_id, :avatar)
    end
end
