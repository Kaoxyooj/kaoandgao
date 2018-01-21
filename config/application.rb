require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Kaoandgao
  class Application < Rails::Application
    config.load_defaults 5.1 
    config.eager_load_paths << Rails.root.join('lib')
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{yml}')]
    config.i18n.default_locale = :en
    config.assets.enabled = true
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
    config.assets.precompile << /\.(?:svg|eot|woff|ttf|otf)$/
  end
end
