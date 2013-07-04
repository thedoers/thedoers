activate :deploy do |deploy|
    deploy.method = :ftp
    deploy.host = "web332.webfaction.com"
    deploy.user = "piermaria"
    deploy.password = "Nonmelaricordo2"
    deploy.path = "/home/piermaria/webapps/thedoers"
end


page "/", :layout => :html5
page "/hiring.html", :layout => :html5
page "/mazinga_page.html", :layout => :html5
page "/qa.html", :layout => :html5
page "/submission_page.html", :layout => :html5
page "/what_we_do.html", :layout => :html5
page "/submission_page_success.html", :layout => :html5




require 'susy'


set :css_dir, 'css'

set :js_dir, 'js'

set :images_dir, 'images'


set :fonts_dir, 'fonts'


# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css
  
  # # Minify Javascript on build
  activate :minify_javascript
  
  # # Create favicon/touch icon set from source/favicon_base.png
  #activate :favicon_maker
  
  # # Enable cache buster
  activate :cache_buster

  activate :minify_html
  
  # # Use relative URLs
  activate :relative_assets

  activate :smusher
  
  # Or use a different image path
  # set :http_path, "/Content/images/"
end