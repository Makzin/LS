# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

# Examples:

#clumsy initial way: 
MINUTES_IN_DAY = 24*60 

def before_midnight(time_string)
  hours = time_string[0..1].to_i 
  minutes = time_string[3..4].to_i
  total_minutes = (hours * 60) + minutes
  if total_minutes == 0 
    return 0
  else 
    MINUTES_IN_DAY - total_minutes
  end 
end 

def after_midnight(time_string)
  hours = time_string[0..1].to_i 
  minutes = time_string[3..4].to_i
  if hours == 24
    return 0 
  end 
  total_minutes = (hours * 60) + minutes
  if total_minutes == 0 
    return 0
  else
    total_minutes
  end 
end   

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

#after reading solution and trying to recreate it

MINUTES_IN_HOUR = 60
HOURS_IN_DAY = 24

def after_midnight(time_string)
  hours, minutes = time_string.split(':').map(&:to_i)
  (hours * MINUTES_IN_HOUR + minutes) % MINUTES_IN_DAY
end  


def before_midnight(time_string)
  delta_minutes = MINUTES_IN_DAY - after_midnight(time_string)
  if delta_minutes == MINUTES_IN_DAY 
    delta_minutes = 0 
  end 
  delta_minutes
end 

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0