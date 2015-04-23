class AddHiddenToSpreeBlogCategories < ActiveRecord::Migration
  def change
    add_column :spree_blog_categories, :hidden, :boolean, default: true
  end
end
