# What will the following code print? Why? Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep


#This will execute the contents of the method count_sheep, which means it'll count from 0 to 4 
# (thanks to the Integer#times method)
#it will then end with a 10, as that's the last line in the count_sheep method. 


