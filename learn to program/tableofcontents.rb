array = [['Chapter 1:  Getting started', 'page 1'],['Chapter 2:  Numbers', 'page 9' ],['Chapter 3:  Letters', 'page 13']]
line_width = 50

puts 'Table of Contents'.center(line_width)
puts ''

array.each do |word|
  beginning = word[0]
  last_piece = word[1]
  puts beginning.ljust(line_width) + last_piece.rjust(30)
end
