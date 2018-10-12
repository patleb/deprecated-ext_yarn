module ExtYarn
  class Engine < ::Rails::Engine
    initializer 'ext_yarn.assets.paths' do |app|
      app.config.assets.paths << root.join('vendor')

      %w(javascripts stylesheets).each do |type|
        app.config.assets.paths << root.join('vendor/bootstrap-sass/assets', type)
      end

      %w(fonts stylesheets).each do |type|
        app.config.assets.paths << root.join('vendor/font-awesome-sass/assets', type)
      end
    end
  end
end
