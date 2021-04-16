class UsersController < ApplicationController
  before_action :get_user, only: [:edit, :update, :show, :destroy]
  def show  
  end
    
  def edit
  end

def update  
    if @user.update(user_params)
      flash[:success] = "Info was successfully updated"
      redirect_to @user
    else
      flash[:error] = "Something went wrong"
      render 'show'
    end
  end
  

  private 
  def user_params
    params.require(:user).permit(:username, :email, :image, :encrypted_password, :encrypted_password_confirmation, :first_name, :middle_name, :last_name, :phone_number, :profile, :last_password_updated, :intro)
  end

  def get_user
    # @user = User.find_by(slug: params[:id])
    @user = User.find(params[:id])
  end
end

