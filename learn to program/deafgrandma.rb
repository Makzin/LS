while true
  input = ''
  puts 'WHADDA YA WANT??'
  input = gets.chomp
  if (input != input.upcase)
    puts 'HUH? SPEAK UP, SONNY!'
  elsif (input == 'BYE')
    puts 'I CAN\'T HEAR YOU!'
  elsif (input == 'BYE BYE BYE')
    puts 'OH, OK BYE'
    break
  else
    puts "NO, NOT SINCE 19#{rand(30..51)}!"
  end
end
