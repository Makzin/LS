array = ['a','b','c','d','e','f','g']

array.each_with_index do |x, index|
  puts "#{index + 1}. #{x}"
end
