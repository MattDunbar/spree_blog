class AddExcerptToSpreeBlogPosts < ActiveRecord::Migration
  def change
    add_column :spree_blog_posts, :excerpt, :text
  end
end
