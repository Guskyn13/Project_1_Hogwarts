require 'bundler/setup'
Bundler.require

require_all 'lib'

ActiveSupport::LogSubscriber.colorize_logging = false
