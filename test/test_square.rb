# To change this template, choose Tools | Templates
# and open the template in the editor.

$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'square'

class TestSquare < Test::Unit::TestCase
  def test_place1
    sq=Square.new(5,0,0);
    assert_equal(25, sq.place)
  end
  
  def test_place2
    sq=Square.new(3,0,0);
    assert_equal(9, sq.place)
  end
end
