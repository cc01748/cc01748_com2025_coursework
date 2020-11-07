Rails.application.routes.draw do
  root 'home#overview'
  get 'home/overview', to: 'home#overview'

  get 'home/contact', to: 'home#contact' do
    @name = params["name"]
    @email = params["email"]
    @message = params["message"]
    erb :contact
  end

  get 'home/currentorders', to: 'home#currentorders'
  get 'home/resolvedorders', to: 'home#resolvedorders'

  post 'home/contact', to: 'home#contact' do
    @name = params["name"]
    @email = params["email"]
    @message = params["message"]
    puts "ok!"
  end
end
