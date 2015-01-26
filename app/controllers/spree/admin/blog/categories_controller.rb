module Spree
  module Admin
    module Blog
      class CategoriesController < Spree::Admin::Blog::ResourceController

        def show
          session[:return_to] ||= request.referer
          redirect_to( :action => :edit )
        end

        def index
          session[:return_to] = request.url
          respond_with(@collection)
        end

        def update
          invoke_callbacks(:update, :before)
          if @object.update_attributes(permitted_resource_params)
            invoke_callbacks(:update, :after)
            flash[:success] = flash_message_for(@object, :successfully_updated)
            respond_with(@object) do |format|
              format.html { redirect_to location_after_save }
              format.js   { render :layout => false }
            end
          else
            # Stops people submitting blank slugs, causing errors when they try to update the category again
            @category.slug = @category.slug_was if @category.slug.blank?
            invoke_callbacks(:update, :fails)
            respond_with(@object)
          end
        end

        def destroy
          @category = Spree::Blog::Category.friendly.find(params[:id])
          @category.destroy

          flash[:success] = Spree.t('notice_messages.blog_category_deleted')

          respond_with(@category) do |format|
            format.html { redirect_to collection_url }
            format.js  { render_js_for_destroy }
          end
        end


        protected

        def find_resource
          Spree::Blog::Category.friendly.find(params[:id])
        end

        def location_after_save
          spree.edit_admin_blog_category_url(@category)
        end

        def collection
          return @collection if @collection.present?
          params[:q] ||= {}

          @collection = super
          # @search needs to be defined as this is passed to search_form_for
          @search = @collection.ransack(params[:q])
          @collection = @search.result.
              page(params[:page]).
              per(Spree::Config[:admin_products_per_page])

          @collection
        end

        def permit_attributes
          params.require(:blog_category).permit!
        end
      end
    end
  end
end
