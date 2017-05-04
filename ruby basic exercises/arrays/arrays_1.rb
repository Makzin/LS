#In the code below, an array containing different types of pets is assigned to pets.

pets = ['cat', 'dog', 'fish', 'lizard']

#Select 'fish' from pets, assign the return value to a variable named my_pet, then print the value of my_pet.

my_pet = pets[2]
puts "I have a pet #{my_pet}!"


#alternative way using binary search, in case you don't know the index at which 'fish' can be found.

your_pet = pets.bsearch {|x| x == 'fish'}
puts your_pet