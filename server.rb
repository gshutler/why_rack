require 'rubygems'
require 'sinatra/base'

# Define a class whose instances can be mounted as Sinatra applications.
#
# See http://www.sinatrarb.com/intro.html for a introduction to Sinatra which 
# should help you understand this example clear if you aren't familiar with
# Sinatra.
class Server < Sinatra::Base

  get '/hello/:person' do |person|
    "Hello, #{person}"
  end

end
