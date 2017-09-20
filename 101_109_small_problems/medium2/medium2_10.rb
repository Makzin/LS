# Sum Square - Square Sum

# Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

# Examples:
require 'pry'


def square_of_sum(num)
  num_array = (1..num).to_a
  num_array.reduce(:+)**2
end


def sum_of_squares(num)
  num_array = (1..num).to_a
  modified_num_array = num_array.map do |element|
    element ** 2
  end
  modified_num_array.reduce(:+)
end

def sum_square_difference(int)
  square_of_sum(int) - sum_of_squares(int)
end



p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
