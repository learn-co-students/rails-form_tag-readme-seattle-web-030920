class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id])
  end
  def new
  end
  def create
    @post = Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end
  
end
