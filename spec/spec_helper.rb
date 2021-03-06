require 'bundler/setup'
Bundler.setup

require 'simplecov'
SimpleCov.start

require 'faraday_middleware'
require 'figaro'
require 'luna'

require 'rails'
require 'action_controller/railtie'
require 'rspec/rails'

RSpec.configure do |config|

  config.before(:each) do 
    # Set Rails constants
    path = File.join(File.dirname(__FILE__), 'fixtures')
    Rails.stub_chain(:root, :to_s).and_return(path)

    RAILS_ENV = 'development'
  end

end

