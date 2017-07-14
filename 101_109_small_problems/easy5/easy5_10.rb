# Write a method that will take a short line of text, and print it within a box.

# Example:

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

def print_in_box(string)
horizontal = "+#{'-' * (string.size + 2)}+"
empty_line = "|#{' ' * (string.size + 2)}|"

puts horizontal
puts empty_line
puts "| #{string} |"
puts empty_line
puts horizontal 
end 

print_in_box('To boldly go where no one has gone before.')
print_in_box('test')