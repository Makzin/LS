# Write a method that takes one integer argument, which may be positive, negative, or zero. This method return true if the number's absolute value is odd. You may assume that the argument is a valid integer value. Keep in mind that you're not allowed to use #odd? or #even? in your solution.

# 1) get the absolute value of the given int
# 2) if remainder of modulus 2 is 0, int is even
# 3) return false if even

def is_odd?(int)
  int.abs % 2 == 1
end

# Examples:

# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true


def is_odd?(int)
  int.abs.remainder(2) == 1
end

# Examples:

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
