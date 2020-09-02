class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :configure_permitted_perameters, if: :devise_controller?


  protected

  def configure_permitted_perameters
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:occupation, :email, :password, :photo, :accepted_terms)}
    devise_parameter_sanitizer.permit(:sign_in) {|u| u.permit(:occupation, :email, :password, :photo)}
    devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:occupation, :email, :password, :password_confirmation, :current_password, :name, :age, :gender, :ethnicty, :photo, :bio, :address,:contact_details, :age_range, :agent_details, :talents, :socialmedia, :website)}
  end

end
