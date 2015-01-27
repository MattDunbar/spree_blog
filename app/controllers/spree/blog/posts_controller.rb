module Spree
  module Blog
    class PostsController < Spree::StoreController
      def index
        @posts = Spree::Blog::Post.all
      end

      def show
        @post = Spree::Blog::Post.friendly.find(params[:id])
      end
    end
  end
end