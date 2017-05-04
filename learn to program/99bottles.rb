bottle_count = 99

while bottle_count >= 1
  puts "#{bottle_count.to_s} bottles of beer on the wall, #{bottle_count.to_s} bottles of beer,
  you take one down you pass it around #{(bottle_count-1).to_s} bottles of beer on the wall!"
  bottle_count -= 1
end
