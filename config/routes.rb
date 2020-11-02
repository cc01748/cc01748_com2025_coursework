Rails.application.routes.draw do
  get 'home/home'

  get 'home/currentorders'
  get 'home/oldorders'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
