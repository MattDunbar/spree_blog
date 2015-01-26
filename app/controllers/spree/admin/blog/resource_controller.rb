module Spree
  module Admin
    module Blog
      class ResourceController < Spree::Admin::ResourceController
        def model_class
          "Spree::Blog::#{controller_name.classify}".constantize
        end

        def model_name
          parent_data[:model_name].gsub('spree/blog/', '')
        end

        def permitted_resource_params
          params.require("blog_#{object_name}").permit!
        end

        def edit_object_url(object, options = {})
          if parent_data.present?
            spree.send "edit_admin_blog_#{model_name}_#{object_name}_url", parent, object, options
          else
            spree.send "edit_admin_blog_#{object_name}_url", object, options
          end
        end

        def object_url(object = nil, options = {})
          target = object ? object : @object
          if parent_data.present?
            spree.send "admin_blog_#{model_name}_#{object_name}_url", parent, target, options
          else
            spree.send "admin_blog_#{object_name}_url", target, options
          end
        end

      end
    end
  end
end