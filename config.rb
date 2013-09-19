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
page "/project_page_pubcoder.html", :layout => :html5
page "/project_page_amolamusica.html", :layout => :html5
page "/project_page_cineama.html", :layout => :html5
page "/project_page_regalister.html", :layout => :html5
page "/project_page_bookolico.html", :layout => :html5
page "/project_page_gnammo.html", :layout => :html5
page "/project_page_localactors.html", :layout => :html5
page "/project_page_soccersquare.html", :layout => :html5
page "/project_page_tamtown.html", :layout => :html5
page "/project_page_volleysquare.html", :layout => :html5
page "/project_page_weightanalytics.html", :layout => :html5
page "/project_page_tacati.html", :layout => :html5
page "/project_page_artmob.html", :layout => :html5
page "/project_page_oilproject.html", :layout => :html5
page "/project_page_fabrica.html", :layout => :html5
# page "/project_page_winepass.html", :layout => :html5
page "/project_page_letscommerce.html", :layout => :html5
page "/project_page_alphabots.html", :layout => :html5
page "/project_page_pupulito.html", :layout => :html5
page "/projects_wall.html", :layout => :html5
page "/team.html", :layout => :html5
page "/we_have_worked_for.html", :layout => :html5
page "/error404.html", :layout => :html5
# page "/blog.html", :layout => :html5
# page "/blog_ixdt_user_interface.html", :layout => :html5
# page "/blog_deep_into_the_ocean.html", :layout => :html5
# page "/blog_ixdt_ruby.html", :layout => :html5




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
  activate :favicon_maker
  
  # # Enable cache buster
  activate :cache_buster

  activate :minify_html
  
  # # Use relative URLs
  #activate :relative_assets

  #activate :smusher
  
  # Or use a different image path
  #set :http_path, "http://thedoers.co/"
end
