module Spree
  module Blog
    class Post < Spree::Base
      # Avoid conflicts by being more specific than 'spree_posts'
      self.table_name = 'spree_blog_posts'

      extend FriendlyId
      friendly_id :slug_candidates, use: :slugged

      belongs_to :category
      has_and_belongs_to_many :tags

      validates :slug, length: { minimum: 3 }
      validates :slug, uniqueness: true

      before_validation :normalize_slug, on: :update

      def normalize_slug
        self.slug = normalize_friendly_id(slug)
      end

      # Try building a slug based on the following fields in increasing order of specificity.
      def slug_candidates
        [
            :title,
            [:created_at, :title]
        ]
      end
    end
  end
end