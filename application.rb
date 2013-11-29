require 'sinatra/content_for'
require 'json'

# Connect to Redis
uri = URI.parse(ENV['REDISTOGO_URL'] || 'redis://localhost:6379')
$redis = Redis.new(host: uri.host, port: uri.port, password: uri.password)

module Grams
  class Application < Sinatra::Base
    get '/' do
      erb :home
    end
  end
end
