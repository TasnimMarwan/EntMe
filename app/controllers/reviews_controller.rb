class ReviewsController < ApplicationController
	def create
  		@review = Review.create(user: current_user, product_id: params[:product_id], comment: params[:comment], rate: params[:rate])
    	respond_to do|format|
    		format.js
    	end
  	end
end
