loop do
  number = rand(1..100)   # a random number between 1 and 10
  puts number
  puts 'Hello!'
  if number == 5
    puts 'Exiting...'
    break
  end
end