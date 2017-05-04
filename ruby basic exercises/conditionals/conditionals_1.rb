# In the code below, sun is randomly assigned as 'visible' or 'hidden'.

sun = ['visible', 'hidden'].sample

# Write an if statement that prints "The sun is so bright!" if sun equals 'visible'.

if sun == 'visible'
	puts "The sun is so bright!"
end 

#OR

puts "The sun is so bright!" if sun == 'visible'