Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace:v1 do
      resources :books #we can remove the only and hand rolling of each route since we've now created all restful routes 
    end

    namespace :v2 do 
      resources :books, only: [:index]
    end
  end
end
