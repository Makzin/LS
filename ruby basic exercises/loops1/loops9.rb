for i in 1..100
  puts i if i % 2 != 0
end


#alternatively: 

puts "Alternative loop: "
for i in 1..100
  puts i if i.odd? 
end