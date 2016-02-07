class LinksController < ApplicationController

  def index
    @links = current_user.links
  end

  def new
     @link = Link.new
   
  end

  def create

    @link = link.new({user_id: current_user.id, slug: params[:slug], target_url: params[:target_url]})

    flash[:success] = "New Link Entered!"

  end
end
