class Authentication::RegistrationsController < Devise::RegistrationsController
  skip_before_action :authenticate_user!, only: [:new, :create]
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  private
  def sign_up_params
   params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:register) do |user_params|
      user_params.permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
    end
  end
end
