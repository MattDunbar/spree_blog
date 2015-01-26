module Spree
  module Blog
    class Tag < ActiveRecord::Base
      # Avoid conflicts by being more specific than 'spree_tags'
      self.table_name = 'spree_blog_tags'

      extend FriendlyId
      friendly_id :slug_candidates, use: :slugged

      has_and_belongs_to_many :posts

      validates :slug, length: { minimum: 3 }
      validates :slug, uniqueness: true

      before_validation :normalize_slug, on: :update

      def normalize_slug
        self.slug = normalize_friendly_id(slug)
      end

      # Try building a slug based on the following fields in increasing order of specificity.
      def slug_candidates
        [
            :name,
            [:id, :name]
        ]
      end
    end
  end
end