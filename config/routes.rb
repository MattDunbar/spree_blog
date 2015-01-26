Spree::Core::Engine.add_routes do
  namespace :admin do
    namespace :blog do
      resources :posts
    end
  end
end
