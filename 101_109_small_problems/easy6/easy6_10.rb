# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

def triangle(int)
  spaces = 1
  stars = int

  int.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces += 1
    stars -= 1 
  end
end 




# Examples:

triangle(5)

#     *
#    **
#   ***
#  ****
# *****
triangle(20)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********
