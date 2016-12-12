Rails.application.routes.draw do

  resources :users

  resources :trips do
    resources :expenses
  end

  resources :events do
    resources :eventitems, only: [:create, :update, :destroy]
  end


  resources :packinglists do
    resources :packingitems, only: [:create, :update, :destroy]
  end

  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  root 'welcome#index'
end
