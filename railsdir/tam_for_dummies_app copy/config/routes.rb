Rails.application.routes.draw do
  mount TalkingStick::Engine, at: '/talking_stick'
  root "home#index"
  get "/indexo"  => "home#indexo"
  get "/teste"  => "home#teste"
  get "/tam1"  => "home#tam1"
  get "/tam2"  => "home#tam2"
  get "/tam3"  => "home#tam3"
  get "/tam4"  => "home#tam4"
  get "/tam5"  => "home#tam5"
  get "/tam6"  => "home#tam6"
  get "/tam06"  => "home#tam06"
  get "/tam7"  => "home#tam7"
  get "/tam8"  => "home#tam8"
  get "/tam9"  => "home#tam9"
  get "/tam10"  => "home#tam10"
  get "/tam11"  => "home#tam11"
  get "/tam12"  => "home#tam12"
  get "/tam13"  => "home#tam13"
  get "/tam14"  => "home#tam14"
  get "/getScreenId"  => "home#getScreenId"

  get '/tfdstuff'    => 'tfd#tfdstuff'
  # get '/serve_media/:filename'  =>  'tfd#serve'
  match '/tfd/:name'  =>  'tfd#serve', :as => :custom_image, via: [:get, :post]


  resources :lectures do
  end

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy] do
    delete :destroy, on: :collection
  end

end
