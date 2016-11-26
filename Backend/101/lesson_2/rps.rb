# input: rock, paper, scissors
# computer makes random choice of rock, paper, scissors
# determine winner  - function with 2 string arguments choice 1 and
# choice2 return true if choice1 wins
# display results  2 arguments player_choice, computer_choice,
# call determine winner once with choice1 as player and once with computer

VALID_CHOICES = %w(rock paper scissors lizard spock).freeze

WINNING = {
  'scissors' => %w(paper lizard),
  'paper'    => %w(rock spock),
  'rock'     => %w(lizard scissors),
  'lizard'   => %w(spock paper),
  'spock'    => %w(scissors rock)
}.freeze

def prompt(string)
  puts '=> ' + string
end

def determine_winner?(choice1, choice2)
  WINNING[choice1].include?(choice2)
end

def display_result(player, computer)
  if determine_winner?(player, computer)
    prompt('You won!')
  elsif determine_winner?(computer, player)
    prompt('Computer wins!')
  else
    prompt('It\'s a draw')
  end
end

# main game loop
player_choice = ''

loop do
  loop do
    prompt("please enter your choice: #{VALID_CHOICES.join(', ')}")
    player_choice = gets.chomp
    break if VALID_CHOICES.include?(player_choice)
    prompt 'invalid option'
  end

  computer_choice = VALID_CHOICES.sample
  prompt("you chose:#{player_choice}, the computer chose:#{computer_choice}")
  display_result(player_choice, computer_choice)
  prompt('play again?')
  break unless gets.chomp.downcase.start_with?('y')
end
