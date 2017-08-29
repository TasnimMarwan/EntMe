class LineItemsController < ApplicationController

	def add_to_cart
		order = current_order
		if LineItem.where(:user_id => session[:order_id] && :product_id => params[:product_id])
		#if LineItem.exists?(order_id: session[:order_id], product_id: params[:product_id]) 
			@lineitem = LineItem.post(order_id: session[:order_id], product_id: params[:product_id])
			@lineitem.update_attributes(:order_id, :product_id) 
		else
			@lineitem = LineItem.new(params[:order_id, :product_id])
		end
	end
end
