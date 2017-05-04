#using an until loop with a counter to indicate array index: 
friends = ['Sarah', 'John', 'Hannah', 'Dave']

count = 0 

until count == friends.length 
	puts "Hello, #{friends[count]}!"
	count += 1 
end 

#using a good ol' for loop

for friend in friends 
	puts "Hello, #{friend}!"
	end 

#using a block

friends.each {|friend| puts "Hello, #{friend}!"}

