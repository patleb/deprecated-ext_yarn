module ExtYarn
  class Engine < ::Rails::Engine
    initializer 'ext_yarn.append_assets_path' do |app|
      %w(
        vendor
        vendor/bootstrap-sass/assets/javascripts
        vendor/bootstrap-sass/assets/stylesheets
        vendor/font-awesome-sass/assets/fonts
        vendor/font-awesome-sass/assets/stylesheets
      ).each do |assets_dir|
        app.config.assets.paths << root.join(assets_dir).to_s
      end
    end
  end
end
