class OrdersController < ApplicationController

  def index
    @orders = current_users.orders
  end

end
