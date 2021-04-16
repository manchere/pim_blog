class PostsController < ApplicationController
  def show 
  end

  def index
    # @posts = current_user.posts
    # @posts = current_user.posts.search(params[:search])
    # if @posts.blank?
    #   @posts = Post.search(params[:search])
    # else
    #   flash[:notice] = 'No results'
    # end
    
    if params[:search].nil?
      @posts = current_user.posts
    else
      @posts = @posts.search(params[:search])
      unless @posts.blank?
        @posts
      end
    end
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
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully published.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    
  end

  private
  def post_params
    params.require(:post).permit(:content, :meta_title, :published, :published_at, :slug, :summary, :title, :post_id)
  end 

end 
