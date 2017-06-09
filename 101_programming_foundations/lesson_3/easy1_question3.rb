
# Replace the word "important" with "urgent" in this string:

#method 1: 
advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub! 'important', 'urgent'
puts advice


#method 2: 
more_advice = "Few things in life are as important as house training your pet dinosaur."

broken_down = more_advice.split(' ')
broken_down[6] = 'urgent'
final_result = broken_down.join(' ')
puts final_result
