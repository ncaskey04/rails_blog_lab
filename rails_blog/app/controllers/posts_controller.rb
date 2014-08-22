class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by_id(params[:id])
    @tag = @post.tags
  end

  def new
  end

  def create
    new_post = params.require(:post).permit(:title, :description, :author)
    new_tag = params.require(:tag).split(",").map(&:downcase)

    post = Post.create(new_post)
    new_tag.each do |tag_name|
      tag = Tag.find_by_name(tag_name)
      if tag == nil
        tag = Tag.create(:name => tag_name)
      end
      post.tags << tag
    end
    redirect_to '/posts'
  end

  def edit
    @post = Post.find_by_id(params[:id])
  end

  def update
    id = params[:id]
    new_post = params[:post].permit(:author, :title, :description)
    new_tag = params[:tags].split(",").map(&:strip).map(&:downcase)

    post = Post.find_by_id(id)
    if post
      post.update_attributes(new_post)
      # remove all old tags
      post.tags.clear
      # add new tags
      new_tag.each do |tag_name|
        tag = Tag.find_or_create_by(name: tag_name)
        post.tags << tag
      end
    end
    redirect_to "/posts/" + id
  end

  def delete
    post = Post.find_by_id(params[:id])
    if post
      post.destroy
    end
    redirect_to '/'
  end

end
