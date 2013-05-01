class CommentsController < ApplicationController

	def create
		@item = Item.find(params[:item_id])
		@comment = @item.comments.build(params[:comment])

		if @comment.save
			flash[:success]	= "You comment has been posted!"
			redirect_to @item
		else
			render 'item/show'
		end

	end
end
