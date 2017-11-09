# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

require ::File.expand_path('../config/environment', __FILE__)
require ::File.expand_path('../bot_slack_for_jenkins/slack_jenkins_bot', __FILE__)

Dotenv.load

Thread.abort_on_exception = true
Thread.new do
  SlackBot.run
end

run Rails.application
