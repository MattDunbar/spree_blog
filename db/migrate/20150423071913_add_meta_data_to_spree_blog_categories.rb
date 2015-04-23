class AddMetaDataToSpreeBlogCategories < ActiveRecord::Migration
  def change
    add_column :spree_blog_categories, :meta_description, :text
    add_column :spree_blog_categories, :meta_keywords, :text
  end
end
