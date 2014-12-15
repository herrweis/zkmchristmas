require 'compass'
# Change Compass configuration
compass_config do |config|
  config.output_style = :expanded
  config.sass_options = {:debug_info => false}
end
 
require 'slim'
Slim::Engine.set_default_options :pretty => false

set :slim, :layout_engine => :slim
set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :build_dir, 'build'


activate :directory_indexes
activate :livereload


# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
  set :relative_links, true
end
