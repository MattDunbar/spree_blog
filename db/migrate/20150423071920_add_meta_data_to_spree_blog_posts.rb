class AddMetaDataToSpreeBlogPosts < ActiveRecord::Migration
  def change
    add_column :spree_blog_posts, :meta_description, :text
    add_column :spree_blog_posts, :meta_keywords, :text
  end
end
