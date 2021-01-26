class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @posts = Post.limit(5)
  end
end
