Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/login' => 'sessions#new'
      post '/login' => 'sessions#create'

      delete '/logout' => 'sessions#logout'
      get 'logged_in' => 'sessions#logged_in'
      resources :users do
        resources :ratings
        resources :reviews
      end
      resources :restaurants do
        resources :ratings
        resources :reviews
      end
    end
  end
end

# post '/logout' => 'sessions#destroy'
# resources :users do
#   resources :ratings
#   resources :reviews
# end
