class PostsController < ApplicationController

  def index
    @posts = Post.all
    render :index
  end

  def create
    new_post = params.require(:post).permit(:title, :description, :author)
    Post.create(new_post)
    redirect_to '/posts'
  end

  def show
    id = params[:id]
    @post = Post.find(id)
  end

end