class Admin::DashboardController < AdminController
  skip_before_action :authenticate_user!

  def index
    @posts = Post.all
    @comments = PostComment.all
    @tags = Tag.all
  end

  def section
  end
end