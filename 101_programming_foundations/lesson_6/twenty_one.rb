# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

  # 52 cards
  # hearts, spades, diamonds, clubs
  # 2 - 10
  # king, queen, jack (10 points each)
  # ace (1 or 11)

require 'pry'

def prompt(input)
  puts "==>#{input}"
end

def initialize_deck
  hearts = [2,3,4,5,6,7,8,9,10,'king', 'queen', 'jack', 'ace']
  spades = [2,3,4,5,6,7,8,9,10,'king', 'queen', 'jack', 'ace']
  diamonds = [2,3,4,5,6,7,8,9,10,'king', 'queen', 'jack', 'ace']
  clubs = [2,3,4,5,6,7,8,9,10,'king', 'queen', 'jack', 'ace']
  deck = [hearts, spades, diamonds, clubs]

end

def deal_card(deck)
  suit = deck.sample
  card = suit.sample
  suit.delete(card)
  card
end

def calculate_hand_value(hand)
  filtered_hand = hand.map do |card|
    if ['king','queen','jack'].include?(card)
      card = 10
    elsif card == 'ace'
      card = 11
    end
    card
  end
  total_value = filtered_hand.reduce(:+)
  if total_value > 21 && hand.include?('ace')
    hand[hand.index('ace')] = 1
  end
    total_value = filtered_hand.reduce(:+)
end

def someone_loses?(current_player_hand)
  calculate_hand_value(current_player_hand) > 21
end

def someone_won?(current_player_hand)
  calculate_hand_value(current_player_hand) == 21
end

def alternate_player(current_player)
  if current_player == 'player'
    current_player = 'dealer'
  else
    current_player = 'player'
  end
end

def hit(deck, current_player_hand)
  current_player_hand << deal_card(deck)
  p current_player_hand
end

def compare_hands(player_hand, dealer_hand)
  if calculate_hand_value(player_hand) > calculate_hand_value(dealer_hand)
    'Player'
  elsif calculate_hand_value(player_hand) == calculate_hand_value(dealer_hand)
    'Tie'
  else
    'Dealer'
  end
end

def hit_or_stay?(deck, current_player_hand, current_player)
  loop do
    puts "Cards are: #{current_player_hand}"
    if current_player == 'Dealer'
      if calculate_hand_value(current_player_hand) < 21
        puts "Dealer choosing to hit"
        sleep(2)
        hit(deck, current_player_hand)
        break if someone_won?(current_player_hand)
        break if someone_loses?(current_player_hand)
      else
        puts 'Dealer chooses to stay'
          dealer_hand = current_player_hand
        break
      end
    else
      prompt "Would you like to hit or stay?"
      answer = gets.chomp
      if answer == 'hit'
        hit(deck, current_player_hand)
        break if someone_won?(current_player_hand)
        break if someone_loses?(current_player_hand)
      elsif answer != 'stay'
        puts "Invalid answer. Please try again."
      else
        puts 'Player chooses to stay'
        break
      end
    end
  end
end



#main game logic
loop do
  deck = initialize_deck
  loop do
    # player turn
    system 'clear'

    current_player = 'Player'
    player_hand = []
    2.times {player_hand << deal_card(deck)}

    hit_or_stay?(deck, player_hand, current_player)
    if someone_loses?(player_hand)
      puts "#{current_player} loses!"
      break
    elsif someone_won?(player_hand)
      puts "#{current_player} gets #{calculate_hand_value(player_hand)} and wins!"
      break
    end

    # computer turn
    puts "Computer's turn!"
    current_player = 'Dealer'
    dealer_hand = []
    2.times {dealer_hand << deal_card(deck)}
    hit_or_stay?(deck, dealer_hand, current_player)
    if someone_loses?(dealer_hand)
      puts "#{current_player} loses!"
      break
    elsif someone_won?(dealer_hand)
      puts "#{current_player} gets #{calculate_hand_value(dealer_hand)} and wins!"
      break
    end
    winner = compare_hands(player_hand, dealer_hand)
    puts "#{winner} wins the game!"
    break
  end

  puts 'Want to play again? (y or n)'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

puts "Thanks for playing Twenty-One! Goodbye!"


