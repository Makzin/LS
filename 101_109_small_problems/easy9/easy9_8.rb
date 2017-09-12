# Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

# Examples:

def sequence(count, value)
  new_array = []
  incrementor = 0
  int_value = value
  while incrementor < count
    new_array << int_value
    int_value += value
    incrementor += 1
  end
  new_array
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []


def sequence2(count, value)
  (1..count).map { |index| index * value }
end

p sequence2(5, 1) == [1, 2, 3, 4, 5]
p sequence2(4, -7) == [-7, -14, -21, -28]
p sequence2(3, 0) == [0, 0, 0]
p sequence2(0, 1000000) == []