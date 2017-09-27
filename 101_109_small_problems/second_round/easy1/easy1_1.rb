# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

# Example:

# 1) verify that first arg is string, second is int
# 2) use the .times method with a block to issue a puts statement
# 3) this method will output 'hello' x number of times, but will return the original int according to docs.


def repeat(string, int)
  return 'invalid string argument' unless string.class == String
  return 'invalid integer argument' unless int.to_s.to_i == int
  int.times { |num| puts string }
end

repeat('Hello', 3)
