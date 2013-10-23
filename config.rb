activate :deploy do |deploy|
    deploy.method = :ftp
    deploy.host = "web332.webfaction.com"
    deploy.user = "piermaria"
    deploy.password = "Nonmelaricordo2"
    deploy.path = "/home/piermaria/webapps/thedoers"
    deploy.build_before = true
end

require 'builder'

page "/", :layout => :html5
page "/hiring.html", :layout => :html5
page "/mazinga-page.html", :layout => :html5
page "/qa.html", :layout => :html5
page "/submission-page.html", :layout => :html5
page "/what-we-do.html", :layout => :html5
page "/submission-page-success.html", :layout => :html5
page "/project-page-pubcoder.html", :layout => :html5
page "/project-page-amolamusica.html", :layout => :html5
page "/project-page-cineama.html", :layout => :html5
page "/project-page-regalister.html", :layout => :html5
page "/project-page-bookolico.html", :layout => :html5
page "/project-page-gnammo.html", :layout => :html5
page "/project-page-localactors.html", :layout => :html5
page "/project-page-soccersquare.html", :layout => :html5
page "/project-page-tamtown.html", :layout => :html5
page "/project-page-volleysquare.html", :layout => :html5
page "/project-page-weightanalytics.html", :layout => :html5
page "/project-page-tacati.html", :layout => :html5
page "/project-page-artmob.html", :layout => :html5
page "/project-page-oilproject.html", :layout => :html5
page "/project-page-fabrica.html", :layout => :html5
# page "/project-page-winepass.html", :layout => :html5
page "/project-page-letscommerce.html", :layout => :html5
page "/project-page-alphabots.html", :layout => :html5
page "/project-page-pupulito.html", :layout => :html5
page "/projects-wall.html", :layout => :html5
page "/team.html", :layout => :html5
#page "/we-have-worked-for.html", :layout => :html5
page "/404.html", :layout => :html5
#page "/blog.html", :layout => :html5
# page "/blog-ixdt-user-interface.html", :layout => :html5
# page "/blog-deep-into-the-ocean.html", :layout => :html5
# page "/blog-ixdt-ruby.html", :layout => :html5

page "/sitemap.xml", :layout => false




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

  #activate :minify_html
  
  # # Use relative URLs
  #activate :relative_assets

  #activate :smusher
  
  # Or use a different image path
  #set :http_path, "http://thedoers.co/"
end
