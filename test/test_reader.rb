# To change this template, choose Tools | Templates
# and open the template in the editor.

$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'reader'

class TestMain < Test::Unit::TestCase
 
  def test_is_number1
    r=Reader.new
    assert_equal(r.is_number?(5),true)
  end
  
  def test_is_number2
    r=Reader.new
    assert_equal(r.is_number?('a'),false)
  end
  
  def test_zero_up1
    r=Reader.new
    assert_equal(r.zero_up?(10),true)
  end
  
  def test_zero_up2
    r=Reader.new
    assert_equal(r.zero_up?(-10),false)
  end
  
  def test_raise
    r=Reader.new
    assert_raise StandardError do
      r.in_error(false)
    end
  end
  
  
end
