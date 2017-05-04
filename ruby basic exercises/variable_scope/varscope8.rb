array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# Compared to the previous exercise, all we have done is remove the assignment of the a at the top level to after the block, and that has a completely different result. 
# We now get an exception when the puts is executed because a is not defined. 
# It is undefined because a in the block is local to the block; it is local to the block because a was not previously defined prior to the block.

