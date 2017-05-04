puts 'Hello there, what\'s your first name?'
firstName = gets.chomp
puts 'And what\'s your last name?'
lastName = gets.chomp

fullName = firstName.length + lastName.length

puts 'Did you know there are ' + fullName.to_s + ' characters in your name, ' + firstName + ' ' + lastName + '?'

line_width = 50
puts firstName.center(line_width)
