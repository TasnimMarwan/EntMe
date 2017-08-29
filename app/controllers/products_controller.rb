class ProductsController < ApplicationController
	def index
		if(params[:category_id])
			@products = klass.where(category_id: params[:category_id])
		else 
			@products = klass.all
		end
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
