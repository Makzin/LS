# Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number.

# Examples;

require 'benchmark'

def negative(int)
  int <= 0 ? int : int - (int*2)
end

def negative_short(int)
  -int.abs
end


p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby

Benchmark.bmbm do |x|
  x.report("negative for 5") { negative(5) }
  x.report("negative for -3") { negative(-3) }
  x.report("negative for 0") { negative(0) }
  x.report("negative_short for 5") { negative(5) }
  x.report("negative_short for 5") { negative(5) }
  x.report("negative_short for 5") { negative(5) }
end