# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

#stupid annoying approach using strings. Should've used century = year / 100 + 1

def century(year)
  century_string = ''
  case year.to_s.length 
  when 1..2
    century_string = '1'
  when 3
    century_string = (year.to_s[0].to_i+1).to_s
  when 4
    if year.to_s[-1] == '0'
      century_string = year.to_s[0..1].to_i.to_s
    else   
      century_string = (year.to_s[0..1].to_i+1).to_s
    end 
  when 5
    century_string = (year.to_s[0..2].to_i+1).to_s
  end 
century_string += last_digit(century_string)

end 

def last_digit(input_string)

 return 'th' if %w(11 12 13).include?(input_string.split(//).last(2).join)

  case input_string[-1]
  when '0'
    return 'th'
  when '1'
    return 'st'
  when '2'
    return 'nd'
  when '3'
    return 'rd'
  else 
    return 'th'
  end 
end 




 p century(2000) == '20th'
 p century(2001) == '21st'
 p century(1965) == '20th'
 p century(256) == '3rd'
 p century(5) == '1st'
 p century(10103) == '102nd'
 p century(1052) == '11th'
 p century(1127) == '12th'
 p century(11201) == '113th'