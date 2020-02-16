class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
     user_path(current_user)
  end

  def after_sign_out_path_for(resource)
      root_path
  end

  protected

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
      # devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
  end
end
Refile.secret_key = '2d97e61220e4596732a4325662a06d3d2d7fe06c2b3854f2c7e5ea55a63bc6a351241a091e8e57e9e3818a0339b77302d2c42363095a91ce91a3a52e76329f08'