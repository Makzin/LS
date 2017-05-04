# What will the following code print? Why? Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

# This will will count from 0 to 1, then hit the sheep >= 2 conditional, follow the return and exit that Integer#times method
#given that return was the last line evaluated, the p count_sheep will ensure that a nil also gets printed, seeing as how 
#return didn't provide a value