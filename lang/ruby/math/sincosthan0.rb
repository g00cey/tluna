#!/usr/bin/env ruby

def dir2Rot(angle)
  n = 0.0000
  n = angle.to_f/180 * Math::PI
  return n
end

i=0
while i <= 600
  if Math.cos(dir2Rot(i)) + Math.sin(dir2Rot(i)) == 0.000 then 
    puts i
  else
    Math.cos(i) + Math.sin(i)
  end
  i += 1
end
