Rails.application.routes.draw do
  get 'home/contact'
  get 'home/overview'

  get 'home/currentorders'
  get 'home/resolvedorders'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
