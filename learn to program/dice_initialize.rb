class Die
  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

  def cheat(number)
    @number_showing = number
  end
end


example = Die.new.showing
puts example
