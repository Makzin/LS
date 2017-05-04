#Using the given code and adjusted with an if statement and break to ensure it doesn't go over 5. 
puts "Using loop statement: "
count = 1

loop do
	if count.odd? 
		puts "#{count} is odd!" 
	else 
		puts "#{count} is even!"
	end 
  	count += 1
  	if count > 5
  		break
  	end 
end

#Using a block
puts "Using a block: "
(1..5).each do |x|
	if x.odd?
		puts "#{x} is odd!" 
	else
		puts "#{x} is even!" 
	end 
end 

#using a for loop
for element in (1..5)
	puts "#{element} is odd!" if element.odd? 
	puts "#{element} is even!" if element.even?
	end 





