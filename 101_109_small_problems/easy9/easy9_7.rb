# Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a string that contains the last name, a comma, a space, and the first name.

# Examples

def swap_name(string)
  string_array = string.split(' ')
  first_name = string_array[0]
  last_name = string_array[1]
  "#{last_name}, #{first_name}"
end


p swap_name('Joe Roberts') == 'Roberts, Joe'
