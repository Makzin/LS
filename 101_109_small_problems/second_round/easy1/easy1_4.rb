# Write a method that counts the number of occurrences of each element in a given array.

# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

# count_occurrences(vehicles)
# Once counted, print each element alongside the number of occurrences.

# Expected output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2



# Understand the problem
# Given an array, figure out how many times each element occurs in the array.
# print the element along with its count alongside it.

# Set up your test cases

# fruit = ['apple', 'pear', 'banana', 'apple', 'kiwi', 'apple', 'banana']
# Expected output
# apple => 3
# banana => 2
# pear => 1
# kiwi => 1

# Describe your inputs, outputs, and data structures
# input: array
# output: hash for easy output (calling .each on the hash to puts each element in the hash)


# Describe your algorithm
# START
# GET array
# SET empty hash : element_count
# LOOP over array using .each
# assign element name as hash key and calling .count with the element name as the hash value
# LOOP over new hash using .each
# PRINT key, value pair using PUTS
# END


def count_occurrences(array)
  element_count = {}
  array.each { |element|  element_count[element] = array.count(element) }
  element_count.each { |key, value| puts "#{key} => #{value}" }
end

fruit = ['apple', 'pear', 'banana', 'apple', 'kiwi', 'apple', 'banana']
count_occurrences(fruit)

# Expected output
# apple => 3
# banana => 2
# pear => 1
# kiwi => 1


vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
count_occurrences(vehicles)

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2



