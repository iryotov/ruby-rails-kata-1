Rails.application.routes.draw do
  resources :authors do
    collection { post :import }
  end

  resources :magazines do
    collection { post :import }
  end

  resources :books do
    collection { post :import }
  end
  
  resources :works
end
