def rank(number)
  case number
  when 0..50
      puts 'This number is between 0 and 50'
    when 50..100
      puts 'this number is between 50 and 100'
    else
      if number < 0
        puts 'this is a negative number you fool'
      else
        puts 'this number is above 100'
      end 
  end
end


puts 'gimme a number, any number'
number = gets.chomp.to_i

rank(number)
