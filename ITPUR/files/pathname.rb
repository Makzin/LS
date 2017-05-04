require 'pathname'

f = File.new('simple_file.txt', 'r')
pn = Pathname.new(f)

puts pn.extname
puts File.extname('simple_file.txt')
