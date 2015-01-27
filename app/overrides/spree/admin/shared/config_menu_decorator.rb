Deface::Override.new(
    :virtual_path => "spree/admin/shared/_configuration_menu",
    :name => "add_blog_posts_to_configuration_sidebar",
    :insert_bottom => "[data-hook='admin_configurations_sidebar_menu']",
    :text => "<%= configurations_sidebar_menu_item 'Blog Posts', admin_blog_posts_path %>",
    :disabled => false)
Deface::Override.new(
    :virtual_path => "spree/admin/shared/_configuration_menu",
    :name => "add_blog_categories_to_configuration_sidebar",
    :insert_bottom => "[data-hook='admin_configurations_sidebar_menu']",
    :text => "<%= configurations_sidebar_menu_item 'Blog Categories', admin_blog_categories_path %>",
    :disabled => false)
Deface::Override.new(
    :virtual_path => "spree/admin/shared/_configuration_menu",
    :name => "add_blog_tags_to_configuration_sidebar",
    :insert_bottom => "[data-hook='admin_configurations_sidebar_menu']",
    :text => "<%= configurations_sidebar_menu_item 'Blog Tags', admin_blog_tags_path %>",
    :disabled => false)