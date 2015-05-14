Rails.application.routes.draw do

  get 'home/index'
  root "home#index"

  namespace :api do

   resources :cameras do
     resources :reviews
     resources :samples
   end
   
  end

  get '*path' => 'cameras#index'

end
