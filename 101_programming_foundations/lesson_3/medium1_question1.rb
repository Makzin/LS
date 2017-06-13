# Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had video screens).

# For this practice problem, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:

# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!


#method 1
line = 'The Flintstones Rock!'
counter = 21

10.times do 
  p line.rjust(counter)
  counter += 1
  end


#method 2
10.times { |number| p (" " * number) + "The Flintstones Rock!" }