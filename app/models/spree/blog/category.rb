module Spree
  module Blog
    class Category < Spree::Base
      # Avoid conflicts by being more specific than 'spree_categories'
      self.table_name = 'spree_blog_categories'

      has_many :posts
    end
  end
end