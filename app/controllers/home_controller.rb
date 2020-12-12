class HomeController < ApplicationController
  # Method called when vieworder page is requested
  def vieworder
    # Create instance variable for orders table
    @orders = Order.all
    # Find specific row by id parameters held in URL
    @specificOrder = Order.find_by(id: params[:id])
  end

  # Method used to update order status on button click
  def updateOrder
    # Find specific row by id parameters held in URL
    @specificOrder = Order.find_by(id: params[:id])
    # Update status row of selected order
    @specificOrder.update(status: params[:status])
    # Refresh page ready for next request
    redirect_back fallback_location: root_path
  end

  def contact
  end

  # Mailer method called when form on contact page is posted
  def sendMail
    # Grab posted data to be added to email
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]

    # Call mailer with data
    ContactHandlerMailer.with(name: @name, email: @email, message: @message).new_email.deliver
  end

  # Method called when overview page is requested
  def overview
    # Create instance of orders table
    @orders = Order.all
    # Create hashmap of all orders based on their status
    @ordersStatusCount = Order.group(:status).count
  end

  # Method called when orders page is requested
  def orders
    # Create instance variable for orders table
    @orders = Order.all
  end


end
