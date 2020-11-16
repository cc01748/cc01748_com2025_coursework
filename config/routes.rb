Rails.application.routes.draw do
  resources :orders
  resources :items
  resources :customers
  # Set home/overview as root
  root 'home#overview'

  # Set get route to home/overview on request
  get 'home/overview', to: 'home#overview'

  # Set get route to home/contact, pass contact form data as parameters on request
  get 'home/contact', to: 'home#contact' do
    @name = params["name"]
    @email = params["email"]
    @message = params["message"]
  end

  # Set get route to home/orders on request
  get 'home/orders', to: 'home#orders'

  # Post request for contact page, form data is posted as parameters
  post 'home/contact', to: 'home#contact' do
    @name = params["name"]
    @email = params["email"]
    @message = params["message"]
    
    # Posted parameter data is sent to mailer for formatting
    ContactHandlerMailer.with(name: @name, email: @email, message: @message).deliver_now
  end

  # Set get route for home/vieworder on request
  get 'home/vieworder', to: 'home#vieworder'
end
