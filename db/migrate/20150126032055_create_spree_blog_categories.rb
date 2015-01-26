class CreateSpreeBlogCategories < ActiveRecord::Migration
  def change
    create_table :spree_blog_categories do |t|
      t.string :name
      t.string :slug
    end
  end
end
