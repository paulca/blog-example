class PostsController < ApplicationController
  
  def new
    @post = Post.new
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to @post
    else
      render :new
    end
  end
  
end
