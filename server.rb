require 'rubygems'
require 'sinatra/base'

class Server < Sinatra::Base

  get '/hello/:person' do |person|
    "Hello, #{person}"
  end

end
