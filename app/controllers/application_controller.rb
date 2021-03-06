class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

    after_filter :set_csrf_cookie_for_ng

  def set_csrf_cookie_for_ng
    cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
  end

  def verified_request?
    super || valid_authenticity_token?(session, request.headers['X-XSRF-TOKEN'])
  end

  def after_sign_in_path_for(resources)
    home_path
  end

  before_filter :configure_permitted_parameters, if: :devise_controller?

   def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :first_name
    devise_parameter_sanitizer.for(:account_update) << :first_name
    devise_parameter_sanitizer.for(:sign_up) << :last_name
    devise_parameter_sanitizer.for(:account_update) << :last_name
    devise_parameter_sanitizer.for(:sign_up) << :profile_name
    devise_parameter_sanitizer.for(:account_update) << :profile_name
    devise_parameter_sanitizer.for(:sign_up) << :user_image
    devise_parameter_sanitizer.for(:account_update) << :user_image
    devise_parameter_sanitizer.for(:sign_up) << :level
    devise_parameter_sanitizer.for(:account_update) << :level
  end
  
end
