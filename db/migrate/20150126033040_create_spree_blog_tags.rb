class CreateSpreeBlogTags < ActiveRecord::Migration
  def change
    create_table :spree_blog_tags do |t|
      t.string :name
      t.string :slug
    end
  end
end
