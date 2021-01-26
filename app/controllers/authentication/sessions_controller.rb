class Authentication::SessionsController < Devise::SessionsController
  skip_before_action :authenticate_user!, only: [:create, :destroy, :new]
 

  def new
    super
  end

  def create
    # user = User.find_by(email: signin_params[:email])

    # if user&.valid_password?(sign_in_params[:password])
    #   # token = current_user.generate_jwt 
    #   current_user = session[:user_id]
    #   redirect_to root_url
    # else
    #   render json: { errors: { 'email or password' => ['is invalid'] } }, status: :unprocessable_entity
    # end
    super
  end

  def destroy
    super
  end

end
