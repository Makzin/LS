
def prompt(input)
  puts "==>#{input}"
end

# rubocop: disable Metrics/MethodLength,Metrics/AbcSize
def display_board(brd, play_score, comp_score, current_player)
  system 'clear'
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts "Player score is #{play_score}, Computer score is #{comp_score}"
  puts "5 points required to win!"
  puts ""
  puts "      |       |"
  puts "  #{brd[1]}   |   #{brd[2]}   |   #{brd[3]}   "
  puts "      |       |"
  puts "------+-------+-------"
  puts "      |       |"
  puts "  #{brd[4]}   |   #{brd[5]}   |   #{brd[6]}   "
  puts "      |       |"
  puts "------+-------+-------"
  puts "      |       |"
  puts "  #{brd[7]}   |   #{brd[8]}   |   #{brd[9]}   "
  puts "      |       |"
  puts ""
  puts ""
  puts "-------------------------"
  puts "    #{current_player}'s turn!    "
  puts "-------------------------"
end
# rubocop: enable Metrics/MethodLength, Metrics/AbcSize

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

FIRST_TURN = ['Player', 'Computer', 'Choose']

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(array, delimiter=', ', word = 'or')
  case array.size
  when 0 then ''
  when 1 then array.first
  when 2 then array.join(" #{word} ")
  else
    array[-1] = "#{word} #{array.last}"
    array.join(delimiter)
  end
end

def detect_best_next_square(line, brd, marker)
  if brd.values_at(line[0], line[1], line[2]).count(marker) == 2
    brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil
  if brd[5] == INITIAL_MARKER
    square = 5
  else
    WINNING_LINES.each do |line|
      square = detect_best_next_square(line, brd, COMPUTER_MARKER)
      break if square
      square = detect_best_next_square(line, brd, PLAYER_MARKER)
      break if square
      square = empty_squares(brd).sample
    end
  end
  brd[square] = COMPUTER_MARKER
end

def place_piece!(brd, current_player)
  if current_player == 'Computer'
    computer_places_piece!(brd)
  else
    player_places_piece!(brd)
  end
end

def alternate_player(current_player)
  if current_player == 'Computer'
    'Player'
  else
    'Computer'
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def new_game?(board)
  prompt "#{detect_winner(board)} is the winner of the game!"
  answer = ''
  loop do
    prompt "Play again? (y or n)"
    answer = gets.chomp
    if answer =~ /[A-Za-z]/
      break
    else
      puts "Invalid response, please try again"
    end
  end
  answer.downcase.start_with?('y')
end

loop do
  current_player = FIRST_TURN.sample
  computer_score = 0
  player_score = 0
  if current_player == 'Choose'
    loop do
      prompt "Please choose who should go first (Player or Computer)."
      answer = gets.chomp
      if answer.downcase.start_with?('p')
        current_player = 'Player'
        break
      elsif answer.downcase.start_with?('c')
        current_player = 'Computer'
        break
      else
        prompt "I'm sorry, that is not a valid choice. Try again"
      end
    end
  end
  loop do
    board = initialize_board
    loop do
      display_board(board, player_score, computer_score, current_player)
      if current_player == 'Computer'
        sleep(1)
      end
      place_piece!(board, current_player)
      display_board(board, player_score, computer_score, current_player)
      current_player = alternate_player(current_player)
      break if board_full?(board) || someone_won?(board)
    end

    if someone_won?(board)
      prompt "#{detect_winner(board)} won this round!"
      sleep(2)
      if detect_winner(board) == 'Player'
        player_score += 1
      elsif detect_winner(board) == 'Computer'
        computer_score += 1
      end
    else
      prompt "It's a tie!"
      sleep(2)
    end

    if computer_score == 5 || player_score == 5
      computer_score = 0
      player_score = 0
      break if !new_game?(board)
    end
  end
  break
end

prompt "Thanks for playing Tic Tac Toe! Goodbye!"
