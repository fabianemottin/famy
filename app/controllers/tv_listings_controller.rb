class TvListingsController < ApplicationController
  before_action :set_tv_listing, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tv_listings = TvListing.all
    respond_with(@tv_listings)
  end

  def show
    respond_with(@tv_listing)
  end

  def new
    @tv_listing = TvListing.new
    respond_with(@tv_listing)
  end

  def edit
  end

  def create
    @tv_listing = TvListing.new(tv_listing_params)
    @tv_listing.save
    respond_with(@tv_listing)
  end

  def update
    @tv_listing.update(tv_listing_params)
    respond_with(@tv_listing)
  end

  def destroy
    @tv_listing.destroy
    respond_with(@tv_listing)
  end

  private
    def set_tv_listing
      @tv_listing = TvListing.find(params[:id])
    end

    def tv_listing_params
      params.require(:tv_listing).permit(:name, :videolink, :imagelink, :infolink, :language_id, :tv_category_id)
    end
end
