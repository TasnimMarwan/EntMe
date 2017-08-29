class ProductsController < ApplicationController
	def index
		@products = klass.cat(params[:category_id]).order(:title).page(params[:page]).per(2)
        @categories = Category.all
	end
	
	def show
    	@product = Product.find(params[:id])
  	end

	private 
	def klass
  		params[:type].singularize.classify.constantize
	end

end
