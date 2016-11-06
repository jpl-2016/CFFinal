Rails.application.routes.draw do
  resources :entities
  resources :guarantors
  resources :loans
  resources :credits
  resources :investment_purchases
  resources :coh_payments
  resources :expend_categories
  resources :payment_methods
  resources :expend_types
  resources :expenditures
  resources :contribution_types
  resources :contributions
  resources :travels
  resources :travelers
  resources :travel_schedules
  resources :entity_types
  resources :campaign_finance_infos
  resources :report_types
  resources :election_types
  resources :committee_notices
  resources :committee_types
  resources :committees
  resources :treasurers
  resources :prefixes
  resources :addresses
  resources :states
  resources :candidates
  resources :office_helds
  resources :office_soughts
  resources :filers
  devise_for :users
  resources :filer_types
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get 'report', to: 'welcome#report'

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
