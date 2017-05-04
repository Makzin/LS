# Write the following methods so that each output is true.

# puts add(2, 2) == 4
# puts add(5, 4) == 9
# puts multiply(add(2, 2), add(5, 4)) == 36


def add(arg1, arg2)
	arg1 + arg2
end

def multiply(arg1,arg2)
	arg1 * arg2 
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36