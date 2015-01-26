Spree::Core::Engine.add_routes do
  namespace :admin do
    namespace :blog do
      resources :posts
      resources :categories
      resources :tags
    end
  end
end
