Rails.application.routes.draw do

  get 'home/index'
  root "home#index"

  namespace :api do

         resources :cameras do
              resources :reviews
              resources :samples
         end
   
        post '/authenticate' => 'authentication#sign_in'

  end #end of namespace

  get '*path' => 'cameras#index'

end
