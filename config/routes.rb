Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :shops, except: %i[destroy]
  resources :cloths
  resources :shelves, :colors, :types, except: :show

  get '/managments', to: 'managments#shop', as: 'managments'
  get '/managments/main', to: 'managments#main', as: 'managment_main'
end
