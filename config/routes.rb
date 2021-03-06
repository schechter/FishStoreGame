FishStoreApp::Application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => 'users/omniauth_callbacks' }

  root :to => "home#index"
  get '/game/stats' => 'game_pages#stats'
  get '/game/new' => 'game_pages#new'
  get "/game/play" => 'game_pages#play'
  get '/paypal/stuff' => 'game_pages#paypal'
  match 'fish/:id/sell_me' => 'fish#sell_me', :as => :sell_me
  match 'fish/:id/buy_me' => 'fish#buy_me', :as => :buy_me
  match 'aquaria/:id/sell_me' => 'aquaria#sell_me', :as => :sell_me
  match 'game/populate_aquarium' => 'game_pages#populate_aquarium', :as => :populate_aquarium
  match 'game/sell_fish' => 'game_pages#sell_fish', :as => :sell_fish
  match 'game/get_dirtiness' => 'game_pages#get_dirtiness', :as => :get_dirtiness
  match 'game/round_over' => 'game_pages#round_over', :S => :round_over
  resources :fish, only: [:new, :create, :destroy]

end

