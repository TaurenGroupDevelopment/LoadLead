class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:f_name, :l_name, :country_code, :mobile_number, :email, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:account_update, keys: [:f_name, :l_name, :country_code, :mobile_number, :email, :password, :password_confirmation])
  end

  # def after_sign_in_path_for(resource)

  # end

end
