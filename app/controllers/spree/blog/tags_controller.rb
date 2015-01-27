module Spree
  module Blog
    class TagsController < Spree::StoreController
      def show
        @tag = Spree::Blog::Tag.friendly.find(params[:id])
      end
    end
  end
end