class CreateSpreeBlogPosts < ActiveRecord::Migration
  def change
    create_table :spree_blog_posts do |t|
      t.string :title
      t.string :slug
      t.text :body
      t.references :category

      t.timestamps
    end
  end
end
