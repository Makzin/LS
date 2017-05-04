File.open("simple_file.txt", "w") do |file|
  file.write("adding the first line of text\n")
end


sample = File.open("simple_file.txt", "a+")
sample.puts("another example of writing to a file")
sample.close

File.open("simple_file.txt", "a+") do |file|
  file << "Here we are with a new line of text\n"
end

File.readlines("simple_file.txt").each do |line|
  puts line
end

File.open("simple_file.txt", "a+") do |file|
  file.write "Writing to files in Ruby is simple"
end

File.readlines("simple_file.txt").each_with_index do |line, line_num|
  puts "#{line_num+1}: #{line}"
end
