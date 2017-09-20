# Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

#Jan 1st 1752 was a Saturday
#365 days a year
#given year minus 1752 gives the number of years to calculate for.
#map each day to one of the 365*year_difference
#check how many of those match friday and 13th

require 'pry'
require 'date'

def friday_13th(year)
  start = Date.new(year, 01, 01)
  finish = Date.new(year, 12, 31)
  friday_count = 0
  (start..finish).each do |date|
    date.friday? && date.mday == 13 ? friday_count += 1 : nil
  end
  friday_count
end

# Examples:

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2