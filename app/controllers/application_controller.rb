class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

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
