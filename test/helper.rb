require 'rubygems'
require 'test/unit'
require 'rack/test'

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rack/pony'

class Test::Unit::TestCase
end
