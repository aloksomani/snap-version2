Rails.application.routes.draw do

  get 'home/index'
  root "home#index"

  get "signup" => "users#create"

  namespace :api do

         resources :cameras do
              resources :reviews
              resources :samples
         end

         resources :users
   
        post '/authenticate' => 'authentication#sign_in'

  end #end of namespace

  get '*path' => 'cameras#index'

end
