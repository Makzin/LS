# In the previous practice problem we added Dino to our array like this:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"
# We could have used either Array#concat or Array#push to add Dino to the family.

# How can we add multiple items to our array? (Dino and Hoppy)


#method 1 - use .insert and assign index
flintstones.insert(-1, 'Dino', 'Hoppy')
p flintstones

#method 2 - using push with multiple arguments
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push('Dino', 'Hoppy')
p flintstones

#method 3 - using unshift with multiple arguments

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.unshift('Dino', 'Hoppy')
p flintstones