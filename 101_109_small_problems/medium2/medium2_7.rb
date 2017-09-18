# Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

#Jan 1st 1752 was a Saturday
#365 days a year
#given year minus 1752 gives the number of years to calculate for.
#map each day to one of the 365*year_difference
#check how many of those match friday and 13th

require 'pry'

DAYS_OF_WEEK = [
  'Saturday',
  'Sunday',
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday'
]


def friday_13th(year)
  day_hash = {}
  days_to_map = ((year - 1752) * 365).to_a
  days_to_map.each do |day|



  end



end



# Examples:

friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2