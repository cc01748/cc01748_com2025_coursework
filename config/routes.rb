Rails.application.routes.draw do
  # Routes to database tables
  resources :orders
  resources :items
  resources :customers

  # Set home#overview as root
  root 'home#overview'

  # Set get route to home/overview on request
  get 'home/overview', to: 'home#overview'

  # Set get route to home/contact on request
  get 'home/contact', to: 'home#contact' 

  # Set get route to home/orders on request
  get 'home/orders', to: 'home#orders'

  # Set get route for home/vieworder on request
  get 'home/vieworder', to: 'home#vieworder'

  # Post request for contact page, form data is posted as parameters
  post 'home/contact', to: 'home#sendMail' 

  # Post request to updateOrder method on button click
  post 'home/vieworder', to: 'home#updateOrder'


end
