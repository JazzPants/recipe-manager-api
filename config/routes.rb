Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
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

# resources :users do
#   resources :ratings
#   resources :reviews
# end
