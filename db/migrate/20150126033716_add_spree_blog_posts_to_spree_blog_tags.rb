class AddSpreeBlogPostsToSpreeBlogTags < ActiveRecord::Migration
  def change
    create_table :spree_blog_posts_tags, :id => false do |t|
      t.column :post_id, :integer
      t.column :tag_id, :integer
    end

    add_index :spree_blog_posts_tags, [:post_id, :tag_id]
  end
end
