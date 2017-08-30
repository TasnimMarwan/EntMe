class LineItemsController < ApplicationController

	def add_to_cart
		order = current_order
		line = LineItem.where(:order_id => order.id, :product_id => params[:product_id]).first
		if line
			line.count  = line.count +  params[:quantity].to_i
			line.save
		else
			lineitem = LineItem.create(order_id: order.id, product_id: params[:product_id], count: params[:quantity])
		end
		redirect_to home_index_path
	end

	def cart
		@order = nil
		if session[:order_id].present?
			@order = Order.find session[:order_id]
      		@lines = @order.line_items
      	end
	end
end
