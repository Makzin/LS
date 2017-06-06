require 'pry'
require 'yaml'

MESSAGES = YAML.load_file('rock_paper_scissors_messages.yml')

VALID_CHOICES = ['rock', 'paper', 'scissors', 'Spock', 'lizard']

WINNING_CONDITIONS = {
  rock: ['scissors', 'lizard'],
  paper: ['rock', 'Spock'],
  scissors: ['lizard', 'paper'],
  lizard: ['Spock', 'paper'],
  Spock: ['rock', 'scissors']
}

def win?(first, second)
  WINNING_CONDITIONS[first.to_sym].include?(second)
end

def prompt(message)
  puts("=> #{message}")
end

def display_results(player, computer)
  if win?(player, computer)
    prompt(MESSAGES['player_win'])
  elsif win?(computer, player)
    prompt(MESSAGES['computer_win'])
  else
    prompt(MESSAGES['tie'])
  end
end

def clear_screen
  system('clear') || system('cls')
end

player_total_score = 0
computer_total_score = 0

loop do
  choice = ''
  s_word_choice = ''
  round_number = 1
  prompt(MESSAGES['welcome'])
  sleep(1)
  prompt(MESSAGES['starting'])
  sleep(1)
  loop do
    clear_screen
    loop do
      prompt("Round ##{round_number}:")
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = gets().chomp().downcase()
      case choice
      when 'p'
        choice = 'paper'
      when 'r'
        choice = 'rock'
      when 'l'
        choice = 'lizard'
      when 'sp'
        choice = 'Spock'
      when 'sc'
        choice = 'scissors'
      when 's'
        loop do
          prompt(MESSAGES['scissors_or_spock'])
          s_word_choice = gets().chomp().downcase()
          if s_word_choice.downcase == 'scissors'
            choice = 'scissors'
            break
          elsif s_word_choice.downcase == 'spock'
            choice = 'Spock'
            break
          else
            prompt(MESSAGES['invalid_choice'])
          end
        end
      end

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt(MESSAGES['invalid_choice'])
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose #{choice}; Computer chose: #{computer_choice}.")

    display_results(choice, computer_choice)
    round_number += 1
    if win?(choice, computer_choice)
      player_total_score += 1
    elsif win?(computer_choice, choice)
      computer_total_score += 1
    end

    prompt("Score is player: #{player_total_score},
      computer: #{computer_total_score}")
    if player_total_score == 5
      prompt(MESSAGES['player_win_game'])
      break
    elsif computer_total_score == 5
      prompt(MESSAGES['computer_win_game'])
      break
    end

    sleep(1)
    prompt(MESSAGES['round_restart'])
    sleep(2)
  end

  answer = ''
  refusal = []
  loop do
    prompt(MESSAGES['play_again?'])
    answer = gets().chomp()
    refusal = ['nope', 'no', 'nah', 'No', 'Nope', 'Nah']
    if refusal.include?(answer)
      break
    elsif answer.downcase().start_with?('y')
      break
    else
      prompt((MESSAGES['invalid_choice']))
    end
  end

  break if refusal.include?(answer)
end

prompt(MESSAGES['goodbye'])
