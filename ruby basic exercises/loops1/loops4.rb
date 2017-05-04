loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer.downcase == 'yes'
  puts 'Incorrect answer. Please answer with "yes"'
end

