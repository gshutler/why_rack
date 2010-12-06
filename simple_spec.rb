require 'rubygems'
require 'server'    # our rack-based application
require 'rack/test' # the rack test helpers
require 'rspec'     # our testing framework

describe Server, 'making a hello request' do

  include Rack::Test::Methods

  let(:app) {subject}
  
  describe 'saying hello to world' do
  
    before do
      get '/hello/world'
    end
    
    it 'should respond "Hello, world"' do
      last_response.body.should == 'Hello, world'
    end
  
  end
  
  describe 'saying hello to Garry' do
  
    before do
      get '/hello/Garry'
    end
    
    it 'should respond "Hello, Garry"' do
      last_response.body.should == 'Hello, Garry'
    end
  
  end  

end
