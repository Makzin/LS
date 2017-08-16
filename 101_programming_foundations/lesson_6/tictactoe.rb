# 1. Display the initial empty 3x3 board.
# 2. Ask the user to mark a square.
# 3. Computer marks a square.
# 4. Display the updated board state.
# 5. If winner, display winner.
# 6. If board is full, display tie.
# 7. If neither winner nor board is full, go to #2
# 8. Play again?
# 9. If yes, go to #1
# 10. Good bye!

require 'pry'
def prompt(input)
  puts "==>#{input}"
end

# rubocop: disable Metrics/MethodLength, metrics/Abcsize
def display_board(brd, player_score, computer_score)
  system 'clear'
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts "Player score is #{player_score}. Computer score is #{computer_score}"
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
end
# rubocop: enable Metrics/MethodLength, metrics/Abcsize

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

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
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
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

def keep_score(computer_score, player_score)
  if detect_winner(brd) == 'Player'
    player_score += 1
  elsif detect_winner(brd) == 'Computer'
    computer_score += 1
  end
end

loop do
  board = initialize_board

  loop do
    display_board(board)

    player_places_piece!(board)
    break if board_full?(board) || someone_won?(board)

    computer_places_piece!(board)
    break if board_full?(board) || someone_won?(board)
  end

  if someone_won?(board)
    prompt "#{detect_winner(board)} won this round!"
    keep_score(computer_score, player_score)
  else
    prompt "It's a tie!"
  end


  if computer_score == 5 || player_score == 5
    prompt "#{detect_winner(board)} is the winner of the game!"
    prompt "Play again? (y or n)"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end
end

prompt "Thanks for playing Tic Tac Toe! Goodbye!"
