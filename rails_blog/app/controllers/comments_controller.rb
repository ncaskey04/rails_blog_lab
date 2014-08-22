class CommentsController < ApplicationController
  def index
    post_id = params[:id]
    @posts = Post.find(post_id)
    @comments = @post.comments
  end

  def new
    post_id = params[:id]
    @posts = Post.find(post_id)
    @comments = post.comments.new
  end

  def create
    post_id = params[:id]
    @posts = Post.find(post_id)
    new_comment = params.require(:comment).permit(:name, :description)
    @comment = @post.comments.comments.create(new_comment)

    redirect_to post_comment_path(@post, @comment)
  end

  def show
  end

  def edit
  end

end
