

counter = 1
number = Random.new 

puts "First loop is: "
while counter < 6
	puts number.rand(100)
	counter += 1 
end 



numbers = []

while numbers.length < 5
	numbers.push rand(100)\
end

puts "Second loop is: "
puts numbers