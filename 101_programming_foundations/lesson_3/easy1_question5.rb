# Programmatically determine if 42 lies between 10 and 100.

# hint: Use Ruby's range object in your solution.


num_range = Range.new(10,100)

if num_range.include?(42)
  puts '42 is between 10 and 100'
else
  puts 'nah'
end 


puts num_range.cover?(42)