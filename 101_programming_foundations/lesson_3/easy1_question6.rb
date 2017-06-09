# Starting with the string:

# famous_words = "seven years ago..."
# show two different ways to put the expected "Four score and " in front of it.


#method 1 
famous_words = "seven years ago..."

puts famous_words.split(' ').unshift("Four score and").join(' ')

#method 2
puts famous_words.prepend('Four score and ')

#method 3

famous_words = "seven years ago..."
puts "Four score and " + famous_words
