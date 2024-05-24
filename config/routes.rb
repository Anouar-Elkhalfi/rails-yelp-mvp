Rails.application.routes.draw do
  # Set the root path to the index action of the restaurants controller
  root "restaurants#index"

  # Resources for restaurants with nested resources for reviews
  resources :restaurants, only: [:index, :show, :new, :create, :edit, :update] do
    resources :reviews, only: [:new, :create]
  end

  # Health check route
  get "up", to: "rails/health#show", as: :rails_health_check
end

# User Stories

# 1. A visitor can see the list of all restaurants.
#    - Route: GET "/restaurants"
#    - Controller Action: index
#    - View: restaurants/index.html.erb

# 2. A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
#    - Route: GET "/restaurants/new"
#    - Controller Action: new
#    - View: restaurants/new.html.erb
#    - Route: POST "/restaurants"
#    - Controller Action: create
#    - Redirect to: GET "/restaurants/:id"
#    - View: restaurants/show.html.erb

# 3. A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
#    - Route: GET "/restaurants/:id"
#    - Controller Action: show
#    - View: restaurants/show.html.erb

# 4. A visitor can add a new review to a restaurant.
#    - Route: GET "/restaurants/:id/reviews/new"
#    - Controller Action: new (in ReviewsController)
#    - View: reviews/new.html.erb
#    - Route: POST "/restaurants/:id/reviews"
#    - Controller Action: create (in ReviewsController)
#    - Redirect to: GET "/restaurants/:id"
#    - View: restaurants/show.html.erb
