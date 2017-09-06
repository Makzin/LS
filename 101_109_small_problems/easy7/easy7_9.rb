# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

# Examples:

def multiply_all_pairs(array1, array2)
  index_count = 0
  new_array = []
  while index_count < array1.length
    multiplied_array = array2.map do |element|
      element * array1[index_count]
    end
    new_array << multiplied_array
    index_count += 1
  end
  new_array.flatten.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]


