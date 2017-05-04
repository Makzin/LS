simple = File.read("simple_file.txt")
original = File.new("original_file.txt", "w+")

File.open(original, "a") do |file|
  file.puts simple
end

puts File.read(original)
