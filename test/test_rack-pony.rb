require 'helper'

class TestRackPony < Test::Unit::TestCase
  include Rack::Test::Methods
  
  def app
    Rack::Builder.new do
      use Rack::Pony
      lambda { |env| [200, {'Content-Type' => 'text/plain'}, 'OK'] }
    end
  end
  
  def test_adding_a_pony_to_request
    get '/'
    assert_equal last_response.headers['X-Pony-For-You'], 'Pony!'
  end
end
