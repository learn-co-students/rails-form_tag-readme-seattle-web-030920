class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    # @post = Post.new
    # redirect_to post_path(@post)
  end
  
  def create
    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end
end
