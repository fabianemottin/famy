class MusicListingsController < ApplicationController
  before_action :set_music_listing, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @music_listings = MusicListing.all
    respond_with(@music_listings)
  end

  def show
    respond_with(@music_listing)
  end

  def new
    @music_listing = MusicListing.new
    respond_with(@music_listing)
  end

  def edit
  end

  def create
    @music_listing = MusicListing.new(music_listing_params)
    @music_listing.save
    respond_with(@music_listing)
  end

  def update
    @music_listing.update(music_listing_params)
    respond_with(@music_listing)
  end

  def destroy
    @music_listing.destroy
    respond_with(@music_listing)
  end

  private
    def set_music_listing
      @music_listing = MusicListing.find(params[:id])
    end

    def music_listing_params
      params.require(:music_listing).permit(:name, :videolink, :imagelink, :infolink, :language_id, :music_category_id, :avatar)
    end
end
