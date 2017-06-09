# How can we add the family pet "Dino" to our usual array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#method 1
flintstones.push('Dino')
p flintstones

#method 2 
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << 'Dino'
p flintstones

#method 3 
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.unshift('Dino')
p flintstones