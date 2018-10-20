class SessionsController < Devise::SessionsController

  before_action :configure_permitted_parameters #, if: :devise_controller?
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, 
      keys: [:name, :email, :password, :password_confirmation, 
        :city, :address, :photo, :info
      ])
  end

  

  def failure
   redirect_to root_path
  end

end