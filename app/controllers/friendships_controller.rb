class FriendshipsController < ApplicationController
  def create
    @follower = current_user.friendships.build(follower_id: params[:follower_id])
    if @follower.save
      flash[:success] = "You are following #{@follower.username} now"
      redirect_to @follower
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def destroy
    @follower = follower.find(params[:id])
    if @follower.destroy
      flash[:success] = "You have unfollowed #{@follower.username}"
      redirect_to followers_url
    else
      flash[:error] = 'Something went wrong'
      redirect_to followers_url
    end
  end
    
end
