class PostsController < ApplicationController

  def index
    @posts = Post.all
    render :index
  end

  def create
    new_post = params.require(:post).permit(:title, :description, :author)
    new_tag = params.require(:tag).permit(:name)
    Post.create(new_post).tags << Tag.find_or_create_by(name: new_tag[:name])
    redirect_to '/posts'
  end

  def show
    id = params[:id]
    @post = Post.find(id)
  end

end
