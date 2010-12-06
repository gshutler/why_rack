require 'rubygems'
require 'server'    # our rack-based application
require 'rack/test' # the rack test helpers
require 'rspec'     # our testing framework

describe Server, 'making a hello request' do
  # make the rack test helpers available  
  include Rack::Test::Methods
  
  # tell rack what code to use to handle the request
  let(:app) {subject}
  
  describe 'saying hello to world' do
  
    before do
      # invoke a rack request with for the given URL
      get '/hello/world'
    end
    
    it 'should respond "Hello, world"' do
      # check that the body of the response to the request is as expected
      last_response.body.should == 'Hello, world'
    end
  
  end
  
  describe 'saying hello to Garry' do
  
    before do
      # invoke a rack request with for the given URL
      get '/hello/Garry'
    end
    
    it 'should respond "Hello, Garry"' do
      # check that the body of the response to the request is as expected
      last_response.body.should == 'Hello, Garry'
    end
  
  end  

end
