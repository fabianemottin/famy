class PLaylistsController < ApplicationController
  before_action :set_p_laylist, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @p_laylists = PLaylist.all
    respond_with(@p_laylists)
  end

  def show
    @p_laylist = PLaylist.where(:id => params[:id]).first
     @name = @p_laylist.playlistname
     @songs = MusicListing.where(:p_laylist_id => params[:id], :language_id => current_user.language_id).limit(2)
     @films = FilmListing.where(:p_laylist_id => params[:id], :language_id => current_user.language_id).limit(2)
     @tv = TvListing.where(:p_laylist_id => params[:id], :language_id => current_user.language_id).limit(2)
     
  end

  def new
    @p_laylist = PLaylist.new
    respond_with(@p_laylist)
  end

  def edit
  end

  def create
    @p_laylist = PLaylist.new(p_laylist_params)
    @p_laylist.save
    respond_with(@p_laylist)
  end

  def update
    @p_laylist.update(p_laylist_params)
    respond_with(@p_laylist)
  end

  def destroy
    @p_laylist.destroy
    respond_with(@p_laylist)
  end

  private
    def set_p_laylist
      @p_laylist = PLaylist.find(params[:id])
    end

    def p_laylist_params
      params.require(:p_laylist).permit(:playlistname)
    end
end
