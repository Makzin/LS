words = []

while true
  puts 'Gimme words!'
  input = gets.chomp
  if (input == '')
    puts 'Here\'s your list of words foo\'!'
    words.sort.each do |word|
    puts word
    end
  break
  end
words.push(input)
end
