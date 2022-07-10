class OrdersController < ApplicationController
  before_action :authenticate_user!
  
  def success
  end

  def bought
    # Associates buyer of listing with the Orders model
    @bought_items = current_user.bought_orders
  end

  def sold
    # Associates seller of listing with the Orders model
    @sold_items = current_user.sold_orders
  end
end
