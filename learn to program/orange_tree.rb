

# OrangeTree class
  #height method
  #one_year_passes method which adds one year to the age
  #after some number of years, your tree should die
  #for the first few years, produce no fruit
  #after a while, start producing fruit and grow more each year
  #count_the_oranges should return the total orange number
  #pick_an_orange which reduces the number of oranges by 1
  #also return a string that tells you how delicious it was or if there were
  #no more oranges to pick.
  #Any oranges you don't pick fall off before the next year





class OrangeTree
  def initialize
    puts 'Behold! Your sapling has been planted!'
    @height = 2
    @age = 1
    @orange_count = 0
  end

  def height
    puts "Your tree is #{@height} feet tall."
  end

  def count_the_oranges
    if @orange_count <= 0
      puts 'There are no oranges on this tree!'
    else
      puts "Your orange tree has #{@orange_count} oranges."
    end
  end

  def pick_an_orange
    @orange_count = @orange_count - 1
    if @orange_count <= 0
      puts "Your tree has no oranges to pick!"
    else
      puts "How delicious! Nomz!"
    end
  end


  def list_of_commands
    commands = ['height', 'count', 'pick', 'time']
    puts 'Here are some things you can do with your orange tree!'
    commands.each {|x| puts x}
    next_command
  end

  def next_command
    puts "What do you want to do next? (hint: type /help for list of commands)"
    input = gets.chomp
    if input == '/help'
      list_of_commands
    elsif
        case input
        when 'pick'
            pick_an_orange
            next_command
          when 'height'
            height
            next_command
          when 'count'
            count_the_oranges
            next_command
          when 'time'
            one_year_passes
            next_command
          else
            puts "That's not a valid command! Please type '/help' for a list of commands "
            next_command
        end
    end
  end

  private

  def one_year_passes
    puts "Oh, how time goes by..."
    @age = @age + 1
    @height = @height + 1
    @orange_count = @orange_count + 1
    if @age < 3
      @orange_count = 0
    elsif @age >= 10
      puts 'Oh no! Your tree got too old and died!'
      exit
    else
        @orange_count = @orange_count * 2
    end
  end
end

my_tree = OrangeTree.new
my_tree.next_command
