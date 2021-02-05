class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
    
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
      if @user.update(user_params)
        flash[:success] = "Info was successfully updated"
        redirect_to @user
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end
  

  private 
  def user_params
    params.require(:user).permit(:email, :image, :encrypted_password, :first_name, :middle_name, :last_name, :phone_number, :profile)
  end
end

