class RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters
    
  protected

  def after_inactive_sign_up_path_for(resource)
    posts_path(session[:registration_params])
  end

  def update_resource(resource, params)
    resource.update_without_password(params)
  end


end