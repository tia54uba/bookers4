class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to posts_path
  end

  def show
  end
  
  private
  
  def post_params
    params.require(:post).permit(:match_date_time,:category,:home_team,:away_team,:body)
  end    
end
