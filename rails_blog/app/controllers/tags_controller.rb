class TagsController < ApplicationController

  def index
    @tags = Tag.all
    render :index
  end

  def show
    # show title and author associated with a tag
    
    
  end


end