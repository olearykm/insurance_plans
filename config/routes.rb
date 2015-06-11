Rails.application.routes.draw do

  # Routes for the Plan_number resource:
  # CREATE
  #get "/plan_numbers/new", :controller => "plan_numbers", :action => "new"
  #post "/create_plan_number", :controller => "plan_numbers", :action => "create"

  # READ
  # get "/plan_numbers", :controller => "plan_numbers", :action => "index"
  # get "/plan_numbers/:id", :controller => "plan_numbers", :action => "show"

  # UPDATE
  # get "/plan_numbers/:id/edit", :controller => "plan_numbers", :action => "edit"
  # post "/update_plan_number/:id", :controller => "plan_numbers", :action => "update"

  # DELETE
  # get "/delete_plan_number/:id", :controller => "plan_numbers", :action => "destroy"
  #------------------------------

  # Routes for the County resource:
  # CREATE
  get "/counties/new", :controller => "counties", :action => "new"
  post "/create_county", :controller => "counties", :action => "create"

  # READ
  get "/counties", :controller => "counties", :action => "index"
  get "/counties/:id", :controller => "counties", :action => "show"

  # UPDATE
  get "/counties/:id/edit", :controller => "counties", :action => "edit"
  post "/update_county/:id", :controller => "counties", :action => "update"

  # DELETE
  #get "/delete_county/:id", :controller => "counties", :action => "destroy"
  #------------------------------

  # Routes for the Plan_type resource:
  # CREATE
  # get "/plan_types/new", :controller => "plan_types", :action => "new"
  # post "/create_plan_type", :controller => "plan_types", :action => "create"

  # READ
  # get "/plan_types", :controller => "plan_types", :action => "index"
  # get "/plan_types/:id", :controller => "plan_types", :action => "show"

  # UPDATE
  # get "/plan_types/:id/edit", :controller => "plan_types", :action => "edit"
  # post "/update_plan_type/:id", :controller => "plan_types", :action => "update"

  # DELETE
  # get "/delete_plan_type/:id", :controller => "plan_types", :action => "destroy"
  #------------------------------

  # Routes for the Comparison resource:
  # CREATE
  # get "/comparisons/new", :controller => "comparisons", :action => "new"
  # post "/create_comparison", :controller => "comparisons", :action => "create"

  # READ
  # get "/comparisons", :controller => "comparisons", :action => "index"
  # get "/comparisons/:id", :controller => "comparisons", :action => "show"

  # UPDATE
  #get "/comparisons/:id/edit", :controller => "comparisons", :action => "edit"
  #post "/update_comparison/:id", :controller => "comparisons", :action => "update"

  # DELETE
  #get "/delete_comparison/:id", :controller => "comparisons", :action => "destroy"
  #------------------------------

  # Routes for the Plan resource:
  # CREATE
  get "/plans/new", :controller => "plans", :action => "new"
  post "/create_plan", :controller => "plans", :action => "create"

  # READ
  get "/plans", :controller => "plans", :action => "index"
  get "/plans/:id", :controller => "plans", :action => "show"

  # UPDATE
  #get "/plans/:id/edit", :controller => "plans", :action => "edit"
  #post "/update_plan/:id", :controller => "plans", :action => "update"

  # DELETE
  get "/delete_plan/:id", :controller => "plans", :action => "destroy"
  #------------------------------

  # Routes for the Year resource:
  # CREATE
  # get "/years/new", :controller => "years", :action => "new"
  # post "/create_year", :controller => "years", :action => "create"

  # READ
  # get "/years", :controller => "years", :action => "index"
  # get "/years/:id", :controller => "years", :action => "show"

  # UPDATE
  # get "/years/:id/edit", :controller => "years", :action => "edit"
  # post "/update_year/:id", :controller => "years", :action => "update"

  # DELETE
  # get "/delete_year/:id", :controller => "years", :action => "destroy"
  #------------------------------

  # Routes for the State resource:
  # CREATE
  get "/states/new", :controller => "states", :action => "new"
  post "/create_state", :controller => "states", :action => "create"

  # READ
  get "/states", :controller => "states", :action => "index"
  get "/states/:id", :controller => "states", :action => "show"

  # UPDATE
  get "/states/:id/edit", :controller => "states", :action => "edit"
  post "/update_state/:id", :controller => "states", :action => "update"

  # DELETE
  #get "/delete_state/:id", :controller => "states", :action => "destroy"
  #------------------------------

  # Routes for the Insurer resource:
  # CREATE
  get "/insurers/new", :controller => "insurers", :action => "new"
  post "/create_insurer", :controller => "insurers", :action => "create"

  # READ
  get "/insurers", :controller => "insurers", :action => "index"
  get "/insurers/:id", :controller => "insurers", :action => "show"

  # UPDATE
  get "/insurers/:id/edit", :controller => "insurers", :action => "edit"
  post "/update_insurer/:id", :controller => "insurers", :action => "update"

  # DELETE
  #get "/delete_insurer/:id", :controller => "insurers", :action => "destroy"
  #------------------------------

  # Routes for the Metal_level resource:
  # CREATE
  # get "/metal_levels/new", :controller => "metal_levels", :action => "new"
  # post "/create_metal_level", :controller => "metal_levels", :action => "create"

  # READ
  # get "/metal_levels", :controller => "metal_levels", :action => "index"
  # get "/metal_levels/:id", :controller => "metal_levels", :action => "show"

  # UPDATE
  # get "/metal_levels/:id/edit", :controller => "metal_levels", :action => "edit"
  # post "/update_metal_level/:id", :controller => "metal_levels", :action => "update"

  # DELETE
  # get "/delete_metal_level/:id", :controller => "metal_levels", :action => "destroy"
  #------------------------------

  devise_for :users
  root "plans#index"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
