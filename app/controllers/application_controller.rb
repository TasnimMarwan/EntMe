class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
 before_action :require_cart_counter

  def require_cart_counter
    @counter = current_order.line_items.count
    @sum = 0
    current_order.line_items.each do |s|
      @sum = @sum + (s.count * s.product.price)
    end
  end

  def current_order
    if session[:order_id].present?
      Order.find(session[:order_id])
    else
      order = Order.create(user: current_user)
      session[:order_id]= order.id
      order
    end
  end
end
