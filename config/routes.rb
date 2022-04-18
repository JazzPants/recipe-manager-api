Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/login' => 'sessions#new'
      post '/login' => 'sessions#create'

      delete '/logout' => 'sessions#logout'
      get '/logged_in' => 'sessions#logged_in'
      resources :users do
        resources :ratings, only: [:index]
        resources :reviews, only: [:index]
      end
      resources :restaurants do
        resources :ratings, only: %i[index create update destroy]
        resources :reviews, only: %i[index create update destroy]
      end
    end
  end
  root to: 'static#home'
end

# post '/logout' => 'sessions#destroy'
# resources :users do
#   resources :ratings
#   resources :reviews
# end
