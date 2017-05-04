# In the code below, sun is randomly assigned as 'visible' or 'hidden'.

sun = ['visible', 'hidden'].sample

# Write an if statement that prints "The sun is so bright!" if sun equals visible. 
# Also, write an unless statement that prints "The clouds are blocking the sun!" unless sun equals visible.

# When writing these statements, take advantage of Ruby's expressiveness 
# and use statement modifiers instead of an if...end statement 
# to print results only when some condition is met or not met.

puts "The sun is so bright!" if sun == 'visible'
puts "The clouds are blocking the sun!" unless sun == 'visible'

# This solution gives us an opportunity to take advantage of how expressive Ruby is. 
# We can call #puts and simply append an if or unless condition to form a shorter, more readable expression. 
# Such conditions, when added to the end of a statement like this, are called modifiers.