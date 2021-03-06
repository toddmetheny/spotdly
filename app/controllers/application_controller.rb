class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  # @profile = Profile.where(:user_id => current_user).last

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:sign_up) << :terms_of_service

    devise_parameter_sanitizer.for(:account_update) { |u|
      u.permit(:password, :current_password, :name, :email)
    }
  end

end
