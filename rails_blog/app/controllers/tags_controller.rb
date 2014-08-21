class TagsController < ApplicationController

  def index
    @tags = Tag.all
    render :index
  end

  def create
    new_tag = params.require(:tag).permit(:name)
    Tag.create(new_tag)
    redirect_to '/posts'
  end


end