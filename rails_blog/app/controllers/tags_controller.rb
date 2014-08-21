class TagsController < ApplicationController

  def index
    @tags = Tag.all
    render :index
  end

  def show
    # show title and author associated with a tag
    # look up post title and post author by id,
    # then show each title and author for each tag
    
    

  end


end