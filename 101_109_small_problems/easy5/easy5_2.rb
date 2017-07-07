# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# You may not use ruby's Date and Time classes.


def time_of_day(integer)
  number, remainder = integer.divmod(1440)
  total_minutes = remainder

  number, remainder = remainder.divmod(60)
  final_hours = number
  final_minutes = remainder

  if final_hours < 10 && final_minutes < 10
    final_hours = "#{'0'}#{final_hours}"
    final_minutes = "#{'0'}#{final_minutes}"
    final_string = "#{final_hours}:#{final_minutes}" 
  elsif final_hours < 10 && final_minutes > 10
    final_hours = "#{'0'}#{final_hours}"
    final_string = "#{final_hours}:#{final_minutes}" 
  elsif final_hours > 10 && final_minutes < 10
    final_minutes = "#{'0'}#{final_minutes}"
    final_string = "#{final_hours}:#{final_minutes}" 
  else
    final_string = "#{final_hours}:#{final_minutes}" 
  end 

  final_string
end 

# Examples:

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"




#A bit more of an elegant solution after reading LS's solution: 

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR  

def time_of_day(integer)
  integer = integer % MINUTES_PER_DAY
  hours, minutes = integer.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"


# Further Exploration

# How would you approach this problem if you were allowed to use ruby's Date and Time classes? Suppose you also needed to consider the day of week? (Assume that delta_minutes is the number of minutes before or after midnight between Saturday and Sunday; in such a method, a delta_minutes value of -4231 would need to produce a return value of Thursday 01:29.)



