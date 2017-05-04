
birth_dates = Hash.new

File.open("/users/maxim/Dropbox/programming/learn to program/text_files/test.txt", "r") do |f|
  f.each_line do |line|
    line.chomp
    name, date, year = line.split(',')
    birth_dates[name] = "#{date}, #{year}"
  end
end

puts "Whose birth date would you like to know?"
chosen_one = gets.chomp
bday = birth_dates[chosen_one]
date, year = bday.split(',')

now = Time.new
age = now.year - year.to_i

if bday == nil
  puts 'ooh, I don\'t know that one...!'
else
  puts "#{chosen_one}'s birtday is on #{bday}"
  puts "They will be turning #{age} on that day."
end
