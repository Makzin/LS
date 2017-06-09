# See if the name "Dino" appears in the string below:

advice = "Few things in life are as important as house training your pet dinosaur."

#Method 1
puts "This string doesn't contain 'Dino'!" if !advice.include?('Dino')

#Method 2
#totally random way of going about it but I wanted to see if it worked. 
puts "This string doesn't contain 'Dino'!" if advice.gsub('Dino', 'lol') == advice

#method 3
puts "This string doesn't contain 'Dino'!" if !advice.match('Dino')