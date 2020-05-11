Rails.application.routes.draw do
  resources :authors
  resources :magazines
  resources :books
  resources :works
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
