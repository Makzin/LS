Dir.chdir '/users/maxim/Dropbox/Marabelle Pictures/Test/'
pic_names = Dir['/users/maxim/Dropbox/Marabelle Pictures/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
  print '.'
    new_name =
      if pic_number <10
        if File.exist?("#{batch_name}0#{pic_number}.jpg")
          puts "Error - file #{batch_name}0#{pic_number}.jpg already exists!"
          exit
        else
        "#{batch_name}0#{pic_number}.jpg"
      end
      else
        if File.exist?("#{batch_name}0#{pic_number}.jpg")
          puts "Error - file #{batch_name}0#{pic_number}.jpg already exists!"
        else
        "#{batch_name}#{pic_number}.jpg"
      end
      end

      File.rename name, new_name
      pic_number = pic_number + 1

      sleep (1.0/12.0)
    end

puts
puts 'Done'
