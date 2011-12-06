# To change this template, choose Tools | Templates
# and open the template in the editor.

class Square
  
  attr_accessor :midX,:midY,:long 
  def initialize
    
  end
  
  def initialize (long,midX,midY)
    @long=long
    @midX=midX
    @midY=midY
    
  end
  
  def place
    long*long
  end
end
