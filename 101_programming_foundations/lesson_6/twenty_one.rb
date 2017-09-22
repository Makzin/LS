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

def calculate_hand_value(hand)
  total = calculate_total(hand)
  correct_for_aces(hand, total)
end

def calculate_total(hand)
  total = 0
  hand.each do |card|
    total += case card
             when 'Ace'
               11
             when 'King', 'Queen', 'Jack'
               10
             else
               card.to_i
             end
  end
  total
end

def correct_for_aces(hand, total)
  number_of_aces = hand.count('Ace')
  while total > WINNING_NUMBER && number_of_aces > 0
    total -= 10
    number_of_aces -= 1
  end
  total
end

def hit(deck, current_hand)
  card = deal_card(deck)
  puts "#{card} is drawn."
  sleep(1)
  current_hand << card
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

def show_hand(actor, hand, round_score)
  puts MESSAGES['blank_line']
  if actor != 'Player'
    puts "#{actor} has "\
      "#{present_cards(hand)}"
  end
  puts "Current total of #{actor}'s hand is "\
        "#{round_score}"
end

def dealer_hit_or_stay(deck, dealer_hand, round_score)
  if round_score < TRIGGER_NUMBER
    puts MESSAGES['dealer_hit']
    hit(deck, dealer_hand)
    dealer_hand
  else
    puts "Dealer chooses to stay"
    'stay'
  end
end

def player_hit_or_stay(deck, player_hand)
  outcome = nil
  loop do
    prompt MESSAGES['hit_or_stay']
    answer = gets.chomp
    if ['h', 'H', 'hit'].include?(answer.downcase)
      outcome = hit(deck, player_hand)
      break
    elsif ['s', 'S', 'stay'].include?(answer.downcase)
      outcome = 'stay'
      break
    else
      puts MESSAGES['invalid_answer']
    end
  end
  outcome
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

def player_turn(deck, player_hand)
  player_round_score = nil
  loop do
    player_round_score = calculate_hand_value(player_hand)
    show_hand('Player', player_hand, player_round_score)
    player_decision = player_hit_or_stay(deck, player_hand)
    if player_decision == 'stay'
      break
    elsif bust?(calculate_hand_value(player_decision))
      break
    end
  end
  calculate_hand_value(player_hand)
end

def dealer_turn(deck, dealer_hand)
  dealer_round_score = nil
  loop do
    dealer_round_score = calculate_hand_value(dealer_hand)
    show_hand('Dealer', dealer_hand, dealer_round_score)
    dealer_decision = dealer_hit_or_stay(deck, dealer_hand, dealer_round_score)
    if dealer_decision == 'stay'
      break
    elsif bust?(calculate_hand_value(dealer_decision))
      break
    end
  end
  calculate_hand_value(dealer_hand)
end

def increment_winner_score(score)
  score + 1
end

player_game_score = 0
dealer_game_score = 0

loop do
  system 'clear' || system('cls')
  puts MESSAGES['welcome']
  deck = initialize_deck
  player_hand = []
  dealer_hand = []
  player_round_score = 0
  dealer_round_score = 0
  puts "Player's game score is #{player_game_score}."
  puts "Dealer's game score is #{dealer_game_score}."
  puts MESSAGES['blank_line']
  set_up_table(deck, player_hand, dealer_hand)
  loop do
    player_round_score = player_turn(deck, player_hand)
    if bust?(player_round_score)
      display_losing_message('Player', player_round_score)
      sleep(1)
      dealer_game_score = increment_winner_score(dealer_game_score)
      break
    end

    dealer_round_score = dealer_turn(deck, dealer_hand)
    if bust?(dealer_round_score)
      display_losing_message('Dealer', dealer_round_score)
      sleep(1)
      player_game_score = increment_winner_score(player_game_score)
      break
    end

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

  puts MESSAGES['press_return']
  gets
end

puts MESSAGES['goodbye']
