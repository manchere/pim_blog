class Authentication::RegistrationsController < Devise::RegistrationsController
  skip_before_action :authenticate_user!, only: [:new, :create]
  

  def new
    super
  end

  def create
    super
  end

  private
  def sign_up_params
   params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
  end

  def account_update_params
   params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, :current_password)
  end
end
