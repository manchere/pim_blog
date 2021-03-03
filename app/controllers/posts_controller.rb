class PostsController < ApplicationController
  def show
    
  end

  def index
    @posts = current_user.posts
  end

  def new
    @post = Post.new
  end
  
  # def create 
  #   @user = current_user
  #   if @post.create(post_params.merge(author_id: @user.id))
  #     flash[:success] = "Posted!"
  #     redirect_to @post
  #   else
  #     flash[:error] = "Sorry, your post was not successful"
  #     render 'new'
  #   end
  # end

  def create
    @user = current_user
    @post = Post.new(post_params.merge(author_id: @user.id))

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Teacher was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    
  end

  def post_params
    params.require(:post).permit(:content, :meta_title, :published, :published_at, :slug, :summary, :title, :parent_id)
  end 

  def search
  end
end
