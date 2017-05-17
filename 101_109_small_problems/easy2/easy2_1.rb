puts "Hi! What's your name?"
name = gets.chomp
if name.empty? 
  name = 'Teddy'
end 

age = Random.new 

teddy_age = age.rand(20..200)

puts "#{name} is #{teddy_age} years old!"

