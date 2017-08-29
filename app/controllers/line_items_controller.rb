class LineItemsController < ApplicationController

	def add_to_cart
		order = current_order
		line = LineItem.where(:order_id => session[:order_id], :product_id => params[:product_id])
		if line.present?
		#if LineItem.exists?(order_id: session[:order_id], product_id: params[:product_id]) 
			#@lineitem = LineItem.post(order_id: session[:order_id], product_id: params[:product_id])
			#line.update_attributes(:count coun_num) 
			#incremeny counter column
		else
			lineitem = LineItem.create(order_id: order.id, product_id: params[:product_id])
		end
		redirect_to home_index_path
	end
end
