class MainController < ApplicationController
before_action :authenticate_user!, :except => [:welcome]

def welcome

if !current_user.nil? 
	redirect_to '/profile'
else
	redirect_to '/users/sign_in'
end

end

def profile

@songs= MusicListing.where(:music_category_id => current_user.music_category_id, :language_id => current_user.language_id).limit(4).order("RANDOM()")

@films= FilmListing.where(:film_category_id => current_user.film_category_id, :language_id => current_user.language_id).limit(4).order("RANDOM()")

@tv= TvListing.where(:tv_category_id => current_user.tv_category_id, :language_id => current_user.language_id).limit(4).order("RANDOM()")

end


end