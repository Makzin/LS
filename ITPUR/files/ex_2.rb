d = Dir.new(".")
while file = d.read do
  puts "#{file} has extension.txt" if File.extname(file) == ".txt"
end

require 'pathname'
pn = Pathname.new(".")
pn.entries.each {|f| puts "#{f} has extension .txt too!" if f.extname == ".txt" }
