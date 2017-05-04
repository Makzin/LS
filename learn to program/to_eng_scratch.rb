class Integer
  def to_eng
    if self == 5
      english = 'five'
    else
      english = 'forty-two'
    end
    english
  end
end

puts 5.to_eng
puts 10.to_eng

number = 55
puts number.to_eng
