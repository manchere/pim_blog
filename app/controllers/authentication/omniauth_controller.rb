class Authentication:OmniauthController < Devise::OmniauthController
  def create
    @identity = Identity.find_with_omniauth(auth)
    if @identity.nil?
      user = User.find_or_create_user_if_email(auth)
      sign_in_and_redirect @user
    else
      session[:user_id] = @identity.user.id  
      redirect_to schools_path
    end
  end

  private
  def auth
    request.env['omniauth.auth']
  end
    
end
