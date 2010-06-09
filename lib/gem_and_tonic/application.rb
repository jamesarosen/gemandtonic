require 'sinatra'

module GemAndTonic

  class Application < Sinatra::Base

    get '/' do
      'Hello, World!'
    end
  end

end
