class AddHiddenToSpreeBlogPost < ActiveRecord::Migration
  def change
    add_column :spree_blog_posts, :hidden, :boolean, default: true
  end
end
