# To change this template, choose Tools | Templates
# and open the template in the editor.

$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'cover'

class TestCover < Test::Unit::TestCase
  def setup
     @base_sq=Square.new(4,2,2)
  end
  
  def teardown
    
  end
  
  def test_cover1
    sq=Square.new(4,6,6)
    count=Cover.new(@base_sq,sq);
    assert_equal(count.count_cover,0 )
  end
  
  def test_cover2
    sq=Square.new(4,5,5)
    count=Cover.new(@base_sq,sq);
    assert_equal(count.count_cover,1 )
  end
  
  def test_cover3
    sq=Square.new(4,4,4)
    count=Cover.new(@base_sq,sq);
    assert_equal(count.count_cover,4 )
  end
  
  def test_cover4
    sq=Square.new(4,3,3)
    count=Cover.new(@base_sq,sq);
    assert_equal(count.count_cover,9 )
  end
  
  
end
