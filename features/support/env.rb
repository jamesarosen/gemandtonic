require 'cucumber/formatter/unicode' # Comment out this line if you don't want Cucumber Unicode support

require 'factory_girl'
Factory.find_definitions

require File.expand_path('../../../dependencies', __FILE__)
require 'rack/test'
require 'webrat'
Webrat.configure do |config|
  config.mode = :rack
end

GemAndTonic::Application.set :environment, :development

module GemAndTonicCucumberAppHelper
  def app
    @app = Rack::Builder.new do
      run GemAndTonic::Application
    end
  end
  include Rack::Test::Methods
  include Webrat::Methods
  include Webrat::Matchers
end

World(GemAndTonicCucumberAppHelper)
