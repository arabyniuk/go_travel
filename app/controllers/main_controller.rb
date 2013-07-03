class MainController < ApplicationController
  def index
  	 @items = Item.where("published_at <= ?", Time.now)
  end

  def show
  	@item = Item.find(params[:id])
  	@items = Item.where("published_at <= ?", Time.now)

  	@comment = Comment.new
  end
end
