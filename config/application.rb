require File.expand_path('../boot', __FILE__)

require 'rails'
require 'action_controller/railtie'
require 'rails/test_unit/railtie'
require 'sprockets/railtie'

if defined?(Bundler)
  Bundler.require(*Rails.groups(:assets => %w(development test)))
end

module Grams
  class Application < Rails::Application
    config.encoding = 'utf-8'
    config.filter_parameters += [:password]
    config.active_support.escape_html_entities_in_json = true
    config.assets.enabled = true
    config.assets.version = '1.0'
  end
end
