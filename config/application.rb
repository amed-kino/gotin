require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Gotin
  class Application < Rails::Application
  config.alphabit = ActiveSupport::OrderedOptions.new
  config.alphabit.capital = ["A", "B", "C", "Ç", "D", "E", "Ê", "F", "G", "H", "I", "Î", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "Ş", "T", "U", "Û", "V", "W", "X", "Y", "Z"]
  # config.i18n.default_locale = :ku



    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
