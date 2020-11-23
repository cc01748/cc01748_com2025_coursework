class HomeController < ApplicationController
  def vieworder
  end

  def contact
  end

  def overview
  end

  def orders 
    @orders = Order.all
  end
end
