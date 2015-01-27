module Spree
  module Blog
    class CategoriesController < Spree::StoreController
      def show
        @category = Spree::Blog::Category.friendly.find(params[:id])
      end
    end
  end
end