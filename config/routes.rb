Rails.application.routes.draw do

  get 'home/index'
  root "home#index"
  get '*path' => 'cameras#index'

  namespace :api do

   resources :cameras do
     resources :reviews
     resources :samples
   end
   
  end

end
