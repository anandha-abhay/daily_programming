#!/usr/local/bin/ruby
#
# http://www.reddit.com/r/dailyprogrammer/comments/1tixzk/122313_challenge_146_easy_polygon_perimeter/
# (Easy): Polygon Perimeter
# A Polygon[2] is a geometric two-dimensional figure that has n-sides (line segments) that closes to form a loop. Polygons can be in many different shapes and have many different neat properties, though this challenge is about Regular Polygons[3] . Our goal is to compute the permitter of an n-sided polygon that has equal-length sides given the circumradius[4] . This is the distance between the center of the Polygon to any of its vertices; not to be confused with the apothem[5] !
# Formal Inputs & Outputs
# Input Description
# Input will consist of one line on standard console input. This line will contain first an integer N, then a floating-point number R. They will be space-delimited. The integer N is for the number of sides of the Polygon, which is between 3 to 100, inclusive. R will be the circumradius, which ranges from 0.01 to 100.0, inclusive.
#   Output Description
# Print the permitter of the given N-sided polygon that has a circumradius of R. Print up to three digits precision.
#   Sample Inputs & Outputs
# Sample Input 1
# 5 3.7
# Sample Output 1
# 21.748
# Sample Input 2
# 100 1.0
# Sample Output 2
# 6.282


if ARGV.length != 2
  puts "Usage: ruby polygon_perimiter number_of_sides, circumradius"
else
  number_of_sides = ARGV[0].to_f
  circumradius = ARGV[1].to_f

  puts circumradius * 2 * Math.sin(Math::PI/number_of_sides) * number_of_sides
end
