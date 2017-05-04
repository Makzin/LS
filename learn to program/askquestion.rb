def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if (reply == 'yes' || reply == 'no')
      return reply
    else
      puts 'Please answer with yes or no'
    end
  end
end

puts 'Hello, and thank you for...'
puts
ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?'
wets_bed = ask 'Do you wet the bed?'
ask 'do you like eating etc'
puts
puts 'debriefing'
puts
puts wets_bed
