Rails.application.routes.draw do
  get 'welcome/index'

  get 'user/new'

  resources :users

  resources :trips

  resources :events do
    resources :eventitems, only: [:create, :update, :destroy]
  end

  resources :expenses

  resources :packinglists do
    resources :packingitems, only: [:create, :update, :destroy]
  end

  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  root 'welcome#index'
end
