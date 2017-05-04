def has_a_b?(string)
  if /b/.match(string)
    puts 'Yurp'
  else
    puts 'neurp'
  end
end

has_a_b?("basketball")
has_a_b?("hockey")
has_a_b?("banana")
has_a_b?("lol")
