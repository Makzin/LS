process_the_loop = [true, false]

loop do 
	result = process_the_loop.sample 
	puts "The loop was processed" if result == true 
	puts "The loop wasn't processed!" if result  == false
	break
end 

