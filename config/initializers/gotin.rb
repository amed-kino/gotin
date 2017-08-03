module Gotin
  class Application < Rails::Application
  config.alphabit = ActiveSupport::OrderedOptions.new
  config.alphabit.capital = ["A", "B", "C", "Ç", "D", "E", "Ê", "F", "G", "H", "I", "Î", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "Ş", "T", "U", "Û", "V", "W", "X", "Y", "Z"]
  # config.i18n.default_locale = :ku
  end
end
