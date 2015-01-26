module Spree
  module Blog
    class Tag < ActiveRecord::Base
      # Avoid conflicts by being more specific than 'spree_tags'
      self.table_name = 'spree_blog_tags'

      has_and_belongs_to_many :posts
    end
  end
end