# Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

# Example:

def rotate_array(array)
  new_array = array.select { |element| element }
  new_array << new_array.shift
end


p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
 p x

 def rotate_string(string)
  rotate_array(string.split(''))
 end

a = 'hello'
p rotate_string(a)
p a

def rotate_integer(int)
  rotate_array(int.to_s.split('')).join.to_i
end

b = 125
p rotate_integer(b)
p b