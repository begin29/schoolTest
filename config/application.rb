require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SchoolTest
  class Application < Rails::Application
    config.action_dispatch.default_headers = {
        'Access-Control-Allow-Origin' => 'https://www.google.com',
        'Access-Control-Request-Method' => %w{GET POST OPTIONS}.join(",")
    }

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :ua

    # rails will fallback to config.i18n.default_locale translation
    config.i18n.fallbacks = true

    # rails will fallback to en, no matter what is set as config.i18n.default_locale
    config.i18n.fallbacks = [:ua]

    # fallbacks value can also be a hash - a map of fallbacks if you will
    # missing translations of ua and fr languages will fallback to english
    config.i18n.fallbacks = {'ua' => 'en'}

    config.middleware.use I18n::JS::Middleware

    config.active_record.raise_in_transactional_callbacks = true

    config.middleware.use ActionDispatch::Flash
    I18n.available_locales = ["en", "ua"]
  end
end
