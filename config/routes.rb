Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  post 'home/generate_numbers'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
