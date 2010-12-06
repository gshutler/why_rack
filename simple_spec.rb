require 'rubygems'
require 'server'    # our rack-based application
require 'rack/test' # the rack test helpers
require 'rspec'     # our testing framework

# We're going to describe a couple of specifications relating to the Server
# class relating to making a hello request.
describe Server, 'making a hello request' do
  
  # Make the rack test helpers available within the specifications.
  include Rack::Test::Methods
  
  # First we need to tell rack what code to use to handle the request. Calling 
  # subject returns an instance of Server by convention in RSpec (based upon the
  # top-level describe.
  #
  # We need to tell rack to use that in our tests by assigning it to the app 
  # method which is where rack looks for the application to use in testing.
  let(:app) {subject}
  
  # We're going to specify what should happen when we request that Server says
  # hello to world.
  describe 'saying hello to world' do
  
    before do
      # Mimic a GET request being made for the url /hello/world and store the
      # response given by our instance of Server in the last_response variable.
      get '/hello/world'
    end
    
    it 'should respond "Hello, world"' do
      # Look at the body of the response given by Server and check it is Hello,
      # world as we expect
      last_response.body.should == 'Hello, world'
    end
  
  end
  
  # Now we're going to specify what should happen when we request that Server 
  # says me, Garry.
  #
  # This follows the same pattern as the previous specification so I'll omit the
  # verbose commenting.
  describe 'saying hello to Garry' do
  
    before do
      get '/hello/Garry'
    end
    
    it 'should respond "Hello, Garry"' do
      last_response.body.should == 'Hello, Garry'
    end
  
  end  

end
