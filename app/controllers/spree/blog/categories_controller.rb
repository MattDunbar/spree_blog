module Spree
  module Blog
    class CategoriesController < Spree::StoreController
      def show
        @categories = Spree::Blog::Category.where(hidden: false)
        @category = Spree::Blog::Category.friendly.find(params[:id])
      end
    end
  end
end