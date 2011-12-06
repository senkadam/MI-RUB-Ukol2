# To change this template, choose Tools | Templates
# and open the template in the editor.
require_relative "square.rb"
class Cover
  attr_accessor :coverPlace,:s_a,:s_b
  def initialize
    
  end
  
  def initialize(s_a,s_b)
    @s_a=s_a
    @s_b=s_b
  end
  
  def touch_err
    puts "Ctverce se ani nedotykaji."
    exit(1)
  end
  
  
  def count_cover
    x=s_a.midX-s_b.midX
    y=s_a.midY-s_b.midY
    x=x.abs
    y=y.abs
    long=(s_a.long+s_b.long)/2
    if x > long
      touch_err
    end
    
    if y > long
      touch_err
    end
    
    x=long-x
    y=long-y
    x*y
  end
end
