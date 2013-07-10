FishStoreApp::Application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => 'users/omniauth_callbacks' }

root :to => "home#index"
get '/game/stats' => 'game_pages#stats'
get '/game/new' => 'game_pages#new'
get '/paypal/stuff' => 'game_pages#paypal'


resources :fish, only: [:new, :create, :destroy]
end
