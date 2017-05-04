def grandfather_clock &sound
  current_time = Time.new.hour
  if current_time <= 13
    sets_of_bells = current_time
  else
    sets_of_bells = current_time /2
  end

  sets_of_bells.times do
    sound.call
  end
end


grandfather_clock do
  puts 'DONG!'
end
