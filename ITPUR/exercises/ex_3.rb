a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

b = a.select {|x| x.odd? }
puts b

#long version
c = []
a.select do |x|
  if (x % 2 != 0)
    c << x
  end
end

puts c 
