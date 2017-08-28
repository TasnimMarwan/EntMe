class ProductsController < ApplicationController
	def index
		@products = klass.all
	end
	
	def show
    	@Product = Product.find(params[:id])
  	end

  	private 
  	def klass
    	params[:type].singularize.classify.constantize
  	end

end
