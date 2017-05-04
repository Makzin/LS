def has_a_b?(string)
  if string =~ /b/
    puts 'Yurp! We got a live one!'
  else
    puts 'Neurp. Keep lookin.'
  end
end

has_a_b?("basketball")
has_a_b?("hockey")
has_a_b?("banana")
has_a_b?("lol")
