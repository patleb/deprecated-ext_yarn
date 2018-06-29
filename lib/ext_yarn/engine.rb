module ExtYarn
  class Engine < ::Rails::Engine
    initializer 'ext_yarn.assets.paths' do |app|
      app.config.assets.paths << root.join('node_modules')

      %w(javascripts stylesheets).each do |type|
        app.config.assets.paths << root.join('node_modules/bootstrap-sass/assets', type)
      end

      %w(fonts stylesheets).each do |type|
        app.config.assets.paths << root.join('node_modules/font-awesome-sass/assets', type)
      end
    end
  end
end
