class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :configure_permitted_perameters, if: :devise_controller?


  protected

  def configure_permitted_perameters
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:occupation, :email, :password)}
    devise_parameter_sanitizer.permit(:sign_in) {|u| u.permit(:occupation, :email, :password)}
    devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:occupation, :email, :password)}
  end

end
