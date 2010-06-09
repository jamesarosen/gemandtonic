# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../dependencies', __FILE__)
require 'gem_and_tonic'
run GemAndTonic::Application
