def conditional_capitalize(word)
  if word.length > 10
    word = word.upcase
  end
  word 
end

puts 'enter a word, any word'
name = gets.chomp

puts conditional_capitalize(name)
