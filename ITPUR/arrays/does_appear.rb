arr = [1, 3, 5, 7, 9, 11]
number = 3

puts arr.include?(number)


arr.each do |x|
  if x == number
    puts "#{x} is in the array."
  end
end

if arr.include?(number)
  puts "#{number} is in the array"
end
