class HomeController < ApplicationController
  def vieworder
    # create instance variable for orders table
    @orders = Order.all
    # find specific row by id parameters held in URL
    @specificOrder = Order.find_by(id: params[:id])
  end

  def updateOrder
    # find specific row by id parameters held in URL
    @specificOrder = Order.find_by(id: params[:id])
    # update status row of selected order
    @specificOrder.update(status: params[:status])
    # refresh page ready for next request
    redirect_back fallback_location: root_path
  end

  def contact
  end

  def overview
    @orders = Order.all
    @ordersStatusCount = Order.group(:status).count
  end

  def orders 
    # create instance variable for orders table
    @orders = Order.all
  end


end
