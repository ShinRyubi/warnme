require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module WarnMe
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.to_prepare do
      DeviseController.respond_to :html, :json
    end

    config.action_view.raise_on_missing_translations = false
    config.active_record.default_timezone = :local
    config.active_record.time_zone_aware_types = [:datetime, :time]


    config.i18n.default_locale = :'en'
    config.i18n.fallbacks = true # use the default locale when nothing can be found
    I18n.config.enforce_available_locales = false

  end
end
