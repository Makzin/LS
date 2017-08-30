 require 'pry'

def prompt(input)
  puts "==>#{input}"
end

def initialize_deck
  hearts = [2,3,4,5,6,7,8,9,10,'King', 'Queen', 'Jack', 'Ace']
  spades = [2,3,4,5,6,7,8,9,10,'King', 'Queen', 'Jack', 'Ace']
  diamonds = [2,3,4,5,6,7,8,9,10,'King', 'Queen', 'Jack', 'Ace']
  clubs = [2,3,4,5,6,7,8,9,10,'King', 'Queen', 'Jack', 'Ace']
  deck = [hearts, spades, diamonds, clubs]
end

def deal_card(deck)
  suit = deck.sample
  card = suit.sample
  suit.delete(card)
  card
end

def present_cards(array, delimiter=', ', word = 'and' )
  case array.size
  when 2 then array.join(" #{word} ")
  else
    array.join(delimiter)
  end
end

def calculate_hand_value(hand)
  filtered_hand = hand.map do |card|
    if ['King','Queen','Jack'].include?(card)
      card = 10
    elsif card == 'Ace'
      card = 11
    end
    card
  end
  total_value = filtered_hand.reduce(:+)
  if total_value > 21 && hand.include?('Ace')
    hand[hand.index('Ace')] = 1
  end
    total_value = filtered_hand.reduce(:+)
end

def someone_loses?(current_player_hand)
  calculate_hand_value(current_player_hand) > 21
end

def someone_won?(current_player_hand)
  calculate_hand_value(current_player_hand) == 21
end

def hit(deck, current_player_hand)
  card_drawn = deal_card(deck)
  puts "#{card_drawn} is drawn."
  current_player_hand << card_drawn
  sleep(1)
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
    if current_player == 'Dealer'
      if (21 - calculate_hand_value(current_player_hand)) > 4
        system 'clear'
        puts "Dealer has #{present_cards(current_player_hand)}"
        puts "Current total of #{current_player}'s hand is #{calculate_hand_value(current_player_hand)}"
        sleep(1)
        puts "Dealer choosing to hit"
        sleep(1)
        hit(deck, current_player_hand)
        break if someone_won?(current_player_hand)
        break if someone_loses?(current_player_hand)
      else
        puts "Dealer has #{present_cards(current_player_hand)}"
        puts 'Dealer chooses to stay'
          dealer_hand = current_player_hand
        break
      end
    else
      puts "Current total of #{current_player}'s hand is #{calculate_hand_value(current_player_hand)}"
      prompt "Would you like to hit or stay?"
      answer = gets.chomp
      if answer == 'hit'
        hit(deck, current_player_hand)
        system 'clear'
        puts "You have: #{present_cards(current_player_hand)}"
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
    dealer_hand = []

    2.times {player_hand << deal_card(deck)}
    2.times {dealer_hand << deal_card(deck)}
    puts "You have: #{present_cards(player_hand)}"
    puts "Dealer has: #{dealer_hand[0]} and an unknown card"
    puts ""
    puts ""
    if calculate_hand_value(player_hand) == 21
      puts "Player wins!"
      break
    end
    hit_or_stay?(deck, player_hand, current_player)
    if someone_loses?(player_hand)
      puts "#{current_player} loses!"
      break
    elsif someone_won?(player_hand)
      puts "#{current_player} gets #{calculate_hand_value(player_hand)} and wins!"
      break
    end

    # computer turn
    system 'clear'
    puts "Computer's turn!"
    current_player = 'Dealer'
    hit_or_stay?(deck, dealer_hand, current_player)
    if someone_loses?(dealer_hand)
      puts "#{current_player} loses!"
      break
    elsif someone_won?(dealer_hand)
      puts "#{current_player} gets #{calculate_hand_value(dealer_hand)} and wins!"
      break
    end
    winner = compare_hands(player_hand, dealer_hand)
    if winner == 'Tie'
      puts "It's a tie!"
    else
      puts "#{winner} wins the game!"
      sleep(2)
    break
  end
end

  puts 'Want to play again? (Y or N)'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

puts "Thanks for playing Twenty-One! Goodbye!"
