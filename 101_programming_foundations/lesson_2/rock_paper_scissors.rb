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

def win?(section, first, second)
  section[first.to_sym].include?(second)
end

def prompt(message)
  puts("=> #{message}")
end

def display_results(hash, player, computer)
  if win?(hash, player, computer)
    prompt(MESSAGES['player_win'])
  elsif win?(hash, computer, player)
    prompt(MESSAGES['computer_win'])
  else
    prompt(MESSAGES['tie'])
  end
end

player_total_score = 0
computer_total_score = 0

prompt(MESSAGES['welcome'])

loop do
  choice = ''
  s_word_choice = ''

  loop do
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = gets().chomp().downcase()
      case choice
      when 'p'
        choice = 'paper'
      when 'r'
        choice = 'rock'
      when 'l'
        choice = 'lizard'
      when 's'
        loop do
          prompt(MESSAGES['scissors_or_spock'])
          s_word_choice = gets().chomp().downcase()
          if s_word_choice == 'scissors'
            choice = 'scissors'
            break
          elsif s_word_choice == 'spock'
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

    display_results(WINNING_CONDITIONS, choice, computer_choice)

    if win?(WINNING_CONDITIONS, choice, computer_choice)
      player_total_score += 1
    elsif win?(WINNING_CONDITIONS, computer_choice, choice)
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

    prompt(MESSAGES['round_restart'])
    sleep(2)
  end

  loop do 
    prompt(MESSAGES['play_again?'])
    answer = gets().chomp()
    refusal = %{nope no nah No Nope Nah}
    if answer.include?(refusal)
      break
    elsif answer.downcase().start_with?('y')
    else 
      prompt((MESSAGES['invalid_choice']))
    end 
  end 
  break
end

prompt(MESSAGES['goodbye'])
