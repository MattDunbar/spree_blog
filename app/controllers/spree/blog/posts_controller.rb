module Spree
  module Blog
    class PostsController < Spree::StoreController
      def index
        @categories = Spree::Blog::Category.where(hidden: false)
        @posts = Spree::Blog::Post.where(category: @categories)
      end

      def show
        @categories = Spree::Blog::Category.where(hidden: false)
        @post = Spree::Blog::Post.friendly.find(params[:id])
      end
    end
  end
end