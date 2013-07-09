FishStoreApp::Application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => 'users/omniauth_callbacks' }

root :to => "home#index"
resources :species, only: [:new]
resources :fish, only: [:new, :create]
end
