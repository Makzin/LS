# Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote in the previous exercise:

# Examples:

def substrings_at_start(string)
  count = 0
  new_array = []
  while count < string.length
    new_array << string[0..count]
    count += 1
  end
  new_array
end

def substrings(string)
  count = 0
  new_array = []
  while count < string.length
    new_array << substrings_at_start(string[count..-1])
    count += 1
  end
  new_array.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
