require 'helper'

class Rack::TestPony < Test::Unit::TestCase
  include Rack::Test::Methods
  
  def app
    app = lambda { |env| [200, {'Content-Type' => 'text/plain'}, 'OK'] }
    Rack::Pony.new(app)
  end
  
  def test_adding_a_pony_to_request
    get '/'
    assert_equal last_response.headers['X-Pony-For-You'], Rack::Pony::PONY
  end
end
