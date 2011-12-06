# To change this template, choose Tools | Templates
# and open the template in the editor.

require_relative "square.rb"
require_relative "cover.rb"

class Reader
  attr_accessor :s_a_long,:s_b_long,:s_a_x,:s_a_y,:s_b_x,:s_b_y,:s_a_long
  def initialize
    
  end
  

  def is_number?(inpar)
    Float(inpar)
    true 
  rescue 
    false
  end

  def zero_up?(a)
    if a>=0
      true
    else 
      false
    end
  end

  def in_error(a)
    if(!a)
      raise StandardError,"Spatny vstup"
    end
  end

  def run
    puts "Zadejte delku hrany prvniho ctverce:"
   @s_a_long=gets
    in_error(is_number?(s_a_long))
    @s_a_long=s_a_long.to_f
    in_error(zero_up?(s_a_long))
    puts "Zadejte x-ovou souradnici stredu prvniho ctverce:"
    @s_a_x=gets
    in_error(is_number?(s_a_x))
    @s_a_x=s_a_x.to_f
    puts "Zadejte y-ovou souradnici stredu prvniho ctverce:"
    @s_a_y=gets
    in_error(is_number?(s_a_y))
    @s_a_y=s_a_y.to_f
    puts "Zadejte delku hrany druheho ctverce:"
    @s_b_long=gets
    in_error(is_number?(s_b_long))
    @s_b_long=s_b_long.to_f
    in_error(zero_up?(s_b_long))
    puts "Zadejte x-ovou souradnici stredu druheho ctverce:"
    @s_b_x=gets
    in_error(is_number?(s_b_x))
    @s_b_x=s_b_x.to_f
    puts "Zadejte y-ovou souradnici stredu druheho ctverce:"
    @s_b_y=gets
    in_error(is_number?(s_b_y))
    @s_b_y=s_b_y.to_f
  end
end
