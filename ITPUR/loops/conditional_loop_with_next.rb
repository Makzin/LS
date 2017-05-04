x = 0

while x <= 100
  if x == 3
    x += 1
    next
  elsif x.odd?
    puts x
  end
  x += 1
end
