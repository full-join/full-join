Rails.application.routes.draw do
 
  root 'blogs#index'
  get 'about', to: 'pages#about'
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'profile', to: 'users#show'
  resources :users do
    resources :likes
  end
  get 'login', to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
