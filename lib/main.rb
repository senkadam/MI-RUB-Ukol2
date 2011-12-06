# To change this template, choose Tools | Templates
# and open the template in the editor.

require_relative "square.rb"
require_relative "cover.rb"
require_relative "reader.rb"

r=Reader.new
r.run


s_a=Square.new(r.s_a_long,r.s_a_x,r.s_a_y)
s_b=Square.new(r.s_b_long,r.s_b_x,r.s_b_y)

cover=Cover.new(s_a,s_b)
cover_num=cover.count_cover

place=s_a.place+s_b.place
place=place-cover_num
output="Obsah sjednoceni dvou ctvercu je "+place.to_s
puts output