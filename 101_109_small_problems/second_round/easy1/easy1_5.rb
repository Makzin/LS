# Write a method that takes one argument, a string, and returns the same string with the words in reverse order.

# Examples:

# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

# Understand the problem
# This method will take an argument (a valid string) and will return that string with the order of its individual words reversed.

# Set up test cases

# reverse_sentence('Reverse these words') == 'words these Reverse'
# reverse_sentence('To be or not to be') == 'be to not or be To'

# describe inputs, outputs and data structure
# input = string object
# output = string object
# will be using array to break down the sentences and reverse the order

# describe algorithm
# START
# READ string argument
# SET new variable 'reverse_words' to an empty array
# SET new variable 'word_array' to the return value of calling String#split(' ') on string
# LOOP Brute-force style over word_array and add the current element of word_array to reverse_words in a reverse way (using #unshift)
# RETURN the result of calling .join method on reverse_words array (with ' ' delimiter)
# END

def reverse_sentence(string)
  reverse_words = []
  word_array = string.split(' ')
  counter = 0
  loop do
    break if counter == word_array.length
    reverse_words.unshift(word_array[counter])
    counter += 1
  end
  p reverse_words.join(' ')
end


puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('To be or not to be') == 'be to not or be To'