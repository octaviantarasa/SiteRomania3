Site::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
    # get 'about', to: 'layouts#application'
  # You can have the root of your site routed with "root"
  # root 'welcome#index'

    get 'auth/:provider/callback', to: 'sessions#create'
    get 'auth/failure', to: redirect('/')
    get 'signout', to: 'sessions#destroy', as: 'signout'

    root to: 'home#home_page'

    get 'about_romania', to: 'about_romania#about_page'
    get 'destinations', to: 'destinations#destinations_page'
    get 'multimedia', to: 'multimedia#multimedia_page'
    get 'special_interest', to: 'special_interest#special_interest_page'
    get 'trip_planner', to: 'trip_planner#trip_planner_page'
    get 'what_to_do', to: 'what_to_do#what_to_do_page'
     resources :rate_locations, only: :update
# my_route GET    /my_route/:first_param/:second_param/:third_param(.:format)
    match '/destinations/top' => 'destinations#top', :as => 'top', :via => :get

    match '/destinations/comment/:clas/:loc' => 'destinations#comment', :as => 'comments', :via => :get
    match '/destinations/comment/:clas/:loc' => 'destinations#create', :via => :post

    match '/destinations/rate' => 'destinations#rate', :as => 'rate', :via => :post

    match '/destinations/cities' => 'destinations#cities', :as => 'cities', :via => :get
    match '/destinations/castles' => 'destinations#castles', :as => 'castles', :via => :get
    match '/destinations/regions' => 'destinations#regions', :as => 'regions', :via => :get
    match '/destinations' => 'destinations#topdestination', :as => 'topdestination', :via => :get

    match '/special_interest/architecture' => 'special_interest#architecture', :as => 'architecture', :via => :get
    match '/special_interest/count_dracula' => 'special_interest#count_dracula', :as => 'count_dracula', :via => :get
    match '/special_interest/festivals_events' => 'special_interest#festivals_events', :as => 'festivals_events', :via => :get
    match '/special_interest/food_wine' => 'special_interest#food_wine', :as => 'food_wine', :via => :get
    match '/special_interest/shopping' => 'special_interest#shopping', :as => 'shopping', :via => :get
    match '/special_interest/traditions_folklore' => 'special_interest#traditions_folklore', :as => 'traditions_folklore', :via => :get

    match '/trip_planner/accommodations' => 'trip_planner#accommodations', :as => 'accommodations', :via => :get
    match '/trip_planner/entry_requirements' => 'trip_planner#entry_requirements', :as => 'entry_requirements', :via => :get
    match '/trip_planner/getting_here' => 'trip_planner#getting_here', :as => 'getting_here', :via => :get
    match '/trip_planner/itinerary_ideas' => 'trip_planner#itinerary_ideas', :as => 'itinerary_ideas', :via => :get
    match '/trip_planner/practical_information' => 'trip_planner#practical_information', :as => 'practical_information', :via => :get
    match '/trip_planner/transportation' => 'trip_planner#transportation', :as => 'transportation', :via => :get
   # get 'hello', to: 'destinations#hello'
        # Example of regular route:
  #   get 'products/:id' => 'catalog#view'


  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
