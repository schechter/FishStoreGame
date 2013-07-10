FishStoreApp::Application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => 'users/omniauth_callbacks' }

root :to => "home#index"

resources :fish, only: [:new, :create, :destroy]
end
