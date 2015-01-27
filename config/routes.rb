Spree::Core::Engine.add_routes do
  namespace :blog do
    resources :posts, only: [:index, :show]
    resources :categories, only: [:show]
    resources :tags, only: [:show]
  end
  namespace :admin do
    namespace :blog do
      resources :posts
      resources :categories
      resources :tags
    end
  end
end
