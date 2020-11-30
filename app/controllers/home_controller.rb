class HomeController < ApplicationController
  def vieworder
    # create instance variable for orders table
    @orders = Order.all
    # find specific row by id parameters held in URL
    @specificOrder = Order.find_by(id: params[:id])
  end

  def updateOrder
    @orders = Order.all
    # find specific row by id parameters held in URL
    @specificOrder = Order.find_by(id: params[:id])
    # update status field of specific row based on ID to 'Picked'
    @specificOrder.update(status: params[:status])
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
