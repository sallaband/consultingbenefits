Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.precompile << Proc.new do |path|
  if path =~ /\.(css|js)\z/
    full_path = Rails.application.assets.resolve(path).to_path
    app_assets_path = Rails.root.join('app', 'assets').to_path
    if full_path.starts_with? app_assets_path
      puts "including asset: " + full_path
      true
    else
      puts "excluding asset: " + full_path
      false
    end
  else
    false
  end
end

Rails.application.config.assets.precompile += [
'jquery/jquery.js',
'jquery.appear/jquery.appear.js',
'jquery.easing/jquery.easing.js',
'jquery-cookie/jquery-cookie.js',
'bootstrap/bootstrap.js',
'common/common.js',
'jquery.validation/jquery.validation.js',
'jquery.stellar/jquery.stellar.js',
'jquery.easy-pie-chart/jquery.easy-pie-chart.js',
'jquery.gmap/jquery.gmap.js',
'twitterjs/twitter.js',
'isotope/jquery.isotope.js',
'owlcarousel/owl.carousel.js',
'jflickrfeed/jflickrfeed.js',
'magnific-popup/jquery.magnific-popup.js',
'vide/jquery.vide.js',
'rs-plugin/js/jquery.themepunch.tools.min.js',
'rs-plugin/js/jquery.themepunch.revolution.min.js',
'circle-flip-slideshow/js/jquery.flipshow.js',
'modernizr/modernizr.js',
'bootstrap/bootstrap.css',
'fontawesome/css/font-awesome.css',
'owlcarousel/owl.carousel.css',
'owlcarousel/owl.theme.css',
'magnific-popup/magnific-popup.css',
'rs-plugin/css/settings.css',
'circle-flip-slideshow/css/component.css']

Rails.application.config.assets.precompile += [
'theme.css',
'theme-elements.css',
'theme-blog.css',
'theme-shop.css',
'theme-animate.css',
'default.css',
'custom.css',
'view.home.js',
'view.contact.js',
'custom.js',
'theme.init.js',
'theme.js']

Rails.application.config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
