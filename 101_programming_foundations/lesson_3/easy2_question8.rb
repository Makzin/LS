# Shorten this sentence:

advice = "Few things in life are as important as house training your pet dinosaur."

# ...remove everything starting from "house".

# Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".

# As a bonus, what happens if you use the String#slice method instead?

#method 1
new_advice = advice.slice(0,38)
advice.slice!(0..38)

puts "Advice is #{advice}"
puts "New advice is #{new_advice}"

#method 2

advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(0, advice.index('house'))

puts advice