class HomeController < ApplicationController
  def vieworder
    # create instance variable for orders table
    @orders = Order.all
    # find specific row by id parameters held in URL
    @specificOrder = Order.find_by(id: params[:id])
  end

  def contact
  end

  def overview
  end

  def orders 
    # create instance variable for orders table
    @orders = Order.all
  end


end
