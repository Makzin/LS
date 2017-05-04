# The method below counts from 0 to 4. 
# Modify the block so that it prints the current number and 
# stops iterating when the current number equals 2.

5.times do |index|
  puts index 
  break if index == 2 
end

#the below should print 5 values

5.times do |index|
  puts index
  break if index == 4
end

#the below should print 1 values

5.times do |index|
  puts index
  break if index < 7
end

