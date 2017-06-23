# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

# input:

# Please write word or multiple words: walk
# output:

# There are 4 characters in "walk".
# input:

# Please write word or multiple words: walk, don't run
# output:

# There are 13 characters in "walk, don't run".


puts "Please write word or multiple words: "
answer_array = gets.chomp.split(' ')
total_chars = 0

answer_array.each do |element|
  total_chars += element.size 
end 
puts "There are #{total_chars} characters in \"#{answer_array.join(' ')}\"."


puts "Please write word or multiple words: "
answer = gets.chomp
total_chars = answer.delete(' ').size

puts "There are #{total_chars} characters in \"#{answer}\"."