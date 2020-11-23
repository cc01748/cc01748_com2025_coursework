class HomeController < ApplicationController
  def vieworder
    @orders = Order.all
    
  end

  def contact
  end

  def overview
  end

  def orders 
    @orders = Order.all
  end


end
