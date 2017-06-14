def select_letter(string, letter)
  new_string = ''
  counter = 0 

  loop do 
    break if counter == string.size 
    counter += 1 
    next unless string[counter] == letter
      new_string << string[counter]
  end 
  new_string
end 

greeting = 'Well, hello there my beautiful darling.'
p select_letter(greeting, 'l').size

