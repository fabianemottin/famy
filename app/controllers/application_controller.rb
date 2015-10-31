class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
before_action :configure_devise_permitted_parameters, if: :devise_controller?

layout :layout

  protected

  def configure_devise_permitted_parameters
    registration_params = [:name, :email, :password, :password_confirmation, :music_category_id, :film_category_id, :tv_category_id, :language_id]

    if params[:action] == 'update'
      devise_parameter_sanitizer.for(:account_update) { 
        |u| u.permit(registration_params << :current_password)
      }
    elsif params[:action] == 'create'
      devise_parameter_sanitizer.for(:sign_up) { 
        |u| u.permit(registration_params) 
      }
    end
  end

  private

  def layout
  #  is_a?(Devise::SesssionsController) ? false: "application"
  !devise_controller? && "application"
end

end
