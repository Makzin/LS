require 'yaml'

MESSAGES = YAML.load_file('twenty_one.yml')
# rubocop: disable Metrics/LineLength

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

  system 'clear'
  puts "You have: #{present_cards(player_hand)}"
  puts "Dealer has: #{dealer_hand[0]} and an unknown card"
  puts "-------------------------------------------------"
end

def calculate_hand_value(hand)
  result = hand.map do |card|
    if ['King', 'Queen', 'Jack'].include?(card)
      card = 10
    elsif ['Ace'].include?(card)
      card = 11
    end
    card
  end
  if result.reduce(:+) > 21 && hand.include?('Ace')
    result[result.index(11)] = 1
  end
  result.reduce(:+)
end

def hit(deck, current_hand)
  card = deal_card(deck)
  sleep(1)
  puts "#{card} is drawn."
  current_hand << card
  sleep(1)
end

def compare_hands(player_hand, dealer_hand)
  puts "Player has #{calculate_hand_value(player_hand)} and Dealer has #{calculate_hand_value(dealer_hand)}"
  sleep(1)
  if calculate_hand_value(player_hand) > calculate_hand_value(dealer_hand)
    puts MESSAGES['player_wins']
  elsif calculate_hand_value(player_hand) == calculate_hand_value(dealer_hand)
    puts MESSAGES['tie']
  else
    puts MESSAGES['dealer_wins']
  end
end

def hit_or_stay?(deck, current_hand, current_player)
  if current_player == 'Dealer'
    if calculate_hand_value(current_hand) <= 17
      puts MESSAGES['dealer_hit']
      hit(deck, current_hand)
    else
      'stay'
    end
  else
    prompt MESSAGES['hit_or_stay']
    answer = gets.chomp
    if answer == 'hit'
      hit(deck, current_hand)
    elsif answer == 'stay'
      'stay'
    else
      puts MESSAGES['invalid_answer']
    end
  end
end

def winner_or_loser?(current_hand, current_player, player_hand, dealer_hand, stay)
  if calculate_hand_value(current_hand) > 21
    puts MESSAGES['blank_line']
    puts "#{current_player} goes over 21 with a total hand value of #{calculate_hand_value(current_hand)}"
    puts "#{current_player} loses!"
    true
  elsif calculate_hand_value(current_hand) == 21
    puts ""
    puts "#{current_player} has a total hand value of #{calculate_hand_value(current_hand)}"
    puts "#{current_player} wins!"
    true
  elsif stay && current_player == 'Dealer'
    compare_hands(player_hand, dealer_hand)
    true
  end
end

loop do
  puts MESSAGES['welcome']
  deck = initialize_deck
  player_hand = []
  dealer_hand = []
  set_up_table(deck, player_hand, dealer_hand)

  current_player = 'Player'
  current_hand = player_hand
  loop do
    stay = nil
    loop do
      break if calculate_hand_value(current_hand) >= 21
      puts MESSAGES['blank_line']
      puts "Current total of #{current_player}'s hand is #{calculate_hand_value(current_hand)}"
      sleep(1)
      stay = hit_or_stay?(deck, current_hand, current_player) == 'stay'
      if stay
        puts MESSAGES['blank_line']
        puts "#{current_player} chooses to stay"
        break
      end
    end
    break if winner_or_loser?(current_hand, current_player, player_hand, dealer_hand, stay)
    current_player = 'Dealer'
    current_hand = dealer_hand
  end

  puts MESSAGES['play_again']
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

puts MESSAGES['goodbye']
