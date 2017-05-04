x = 1000

def countdown_to_zero_recursively(number)
  if number <= 0
    puts number
  else
    puts number
    countdown_to_zero_recursively(number-1)
  end
end

countdown_to_zero_recursively(x)
