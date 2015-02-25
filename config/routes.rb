Rails.application.routes.draw do
  root 'products#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'


  resources :companies do
      resources :company_reviews
      resources :products
  end

  resources :reviews

end
