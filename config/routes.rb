Rails.application.routes.draw do
  root 'products#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'


  resources :companies do
      resources :company_reviews
  end

  resources :products do
    resources :product_reviews
  end

  resources :reviews

end
