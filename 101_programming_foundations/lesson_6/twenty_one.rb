require 'yaml'

MESSAGES = YAML.load_file('twenty_one.yml')
WINNING_NUMBER = 21
TRIGGER_NUMBER = 17

def messages(message)
  MESSAGES[message]
end

def prompt(input)
  puts "==>#{input}"
end

def initialize_deck
  deck = []
  4.times do
    deck << [2, 3, 4, 5, 6, 7, 8, 9, 10, 'King', 'Queen', 'Jack', 'Ace']
  end
  deck
end

def deal_card(deck)
  suit = deck.sample
  card = suit.sample
  suit.delete(card)
  card
end

def present_cards(array, delimiter=', ', word = 'and')
  case array.size
  when 2 then array.join(" #{word} ")
  else
    array.join(delimiter)
  end
end

def set_up_table(deck, player_hand, dealer_hand)
  2.times { player_hand << deal_card(deck) }
  2.times { dealer_hand << deal_card(deck) }
  puts "You have:"\
       "#{present_cards(player_hand)}"
  puts "Dealer has: #{dealer_hand[0]} "\
      "and an unknown card"
  puts "-------------------------------------------------"
end

def filter_ace(hand)
  hand_without_ace = hand.map do |card|
    if [11].include?(card)
      card = 1
    end
    card
  end
  hand_without_ace.inject(:+)
end

def calculate_hand_value(hand)
  hand_value = hand.map do |card|
    if ['King', 'Queen', 'Jack'].include?(card)
      card = 10
    elsif ['Ace'].include?(card)
      card = 11
    end
    card
  end
  if hand_value.inject(:+) > WINNING_NUMBER && hand_value.include?(11)
    filter_ace(hand_value)
  else
    hand_value.inject(:+)
  end
end

def hit(deck, current_hand)
  card = deal_card(deck)
  sleep(1)
  puts "#{card} is drawn."
  current_hand << card
  sleep(1)
end

def compare_hands(player_round_score, dealer_round_score)
  puts  "Player has #{player_round_score} "\
        "and Dealer has #{dealer_round_score}"
  sleep(1)
  if player_round_score > dealer_round_score
    puts MESSAGES['player_wins']
    sleep(1)
    'player'
  elsif player_round_score == dealer_round_score
    puts MESSAGES['tie']
    sleep(1)
  else
    puts MESSAGES['dealer_wins']
    sleep(1)
    'dealer'
  end
end

def dealer_hit_or_stay?(deck, dealer_hand)
  dealer_round_score = calculate_hand_value(dealer_hand)
  puts MESSAGES['blank_line']
  puts "Current total of Dealer's hand is "\
        "#{dealer_round_score}"
  if dealer_round_score <= TRIGGER_NUMBER
    puts MESSAGES['dealer_hit']
    hit(deck, dealer_hand)
  else
    puts "Dealer chooses to stay"
    'stay'
  end
end

def player_hit_or_stay?(deck, player_hand)
  player_round_score = calculate_hand_value(player_hand)
  puts MESSAGES['blank_line']
  puts "Current total of Player's hand is "\
        "#{player_round_score}"
  prompt MESSAGES['hit_or_stay']
  answer = gets.chomp
  if ['h', 'H', 'hit'].include?(answer.downcase)
    hit(deck, player_hand)
  elsif ['s', 'S', 'stay'].include?(answer.downcase)
    'stay'
  else
    puts MESSAGES['invalid_answer']
  end
end

def display_losing_message(current_player, total_score)
  puts MESSAGES['blank_line']
  puts "#{current_player} goes over #{WINNING_NUMBER} with a "\
        "total hand value of #{total_score}"
  puts "#{current_player} loses!"
end

def display_winning_message(current_player, total_score)
  puts MESSAGES['blank_line']
  puts "#{current_player} has a total hand value of "\
    "#{total_score}"
  puts "#{current_player} wins!"
end

def bust?(current_score)
  current_score > WINNING_NUMBER
end

def declare_game_winner(player_game_score)
  if player_game_score == 5
    puts 'Player won the game!'
  else
    puts 'Dealer won the game!'
  end
end

player_game_score = 0
dealer_game_score = 0

loop do
  system 'clear' || system('cls')
  puts MESSAGES['welcome']
  deck = initialize_deck
  player_hand = []
  dealer_hand = []
  player_round_score = nil
  dealer_round_score = nil
  puts "Player's game score is #{player_game_score}."
  puts "Dealer's game score is #{dealer_game_score}."
  puts MESSAGES['blank_line']
  set_up_table(deck, player_hand, dealer_hand)

  loop do
    loop do
      player_round_score = calculate_hand_value(player_hand)
      break if player_hit_or_stay?(deck, player_hand) == 'stay'
      player_round_score = calculate_hand_value(player_hand)
      if bust?(player_round_score)
        display_losing_message('Player', player_round_score)
        sleep(1)
        dealer_game_score += 1
        break
      end
    end

    break if bust?(calculate_hand_value(player_hand))

    loop do
      dealer_round_score = calculate_hand_value(dealer_hand)
      break if dealer_hit_or_stay?(deck, dealer_hand) == 'stay'
      dealer_round_score = calculate_hand_value(dealer_hand)
      if bust?(dealer_round_score)
        display_losing_message('Dealer', dealer_round_score)
        sleep(1)
        player_game_score += 1
        break
      end
    end

    break if bust?(dealer_round_score)

    round_outcome = compare_hands(player_round_score, dealer_round_score)
    case round_outcome
    when 'player'
      player_game_score += 1
    when 'dealer'
      dealer_game_score += 1
    end
    break
  end

  if player_game_score == 5 || dealer_game_score == 5
    declare_game_winner(player_game_score)
    player_game_score = 0
    dealer_game_score = 0

    answer = nil
    loop do
      puts MESSAGES['play_again']
      answer = gets.chomp.downcase
      if answer.start_with?('y', 'n')
        break
      else
        puts "Sorry, incorrect answer."
      end
    end
    if answer.start_with?('n')
      break
    elsif answer.downcase.start_with?('y')
      next
    end
  end
end

puts MESSAGES['goodbye']
