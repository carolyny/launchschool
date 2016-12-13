PLAYER_MARKER = "X".freeze
COMPUTER_MARKER = "O".freeze

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

WINNING_SCORE = 5

player_score = 0
computer_score = 0

def clear_screen
  system('clear') || system('cls')
end

def prompt(string)
  puts "=> #{string}"
end

def initialise_board
  new_board = {}
  (1..9).each { |key| new_board[key] = ' ' }
  new_board
end

def display_board(board)
  clear_screen
  puts
  puts " #{board[1]} | #{board[2]} | #{board[3]}"
  puts '---+---+---'
  puts " #{board[4]} | #{board[5]} | #{board[6]}"
  puts '---+---+---'
  puts " #{board[7]} | #{board[8]} | #{board[9]}"
  puts
  puts
end

def joiner(array_of_empty_squares, delimiter = ', ', word = 'or')
  case array_of_empty_squares.size
  when 0 then ' '
  when 1 then array_of_empty_squares.first
  when 2 then array_of_empty_squares.join(' #{word} ')
  else
    array_of_empty_squares[0..-2].join(delimiter) + " #{word} " +
      array_of_empty_squares[-1].to_s
  end
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |square, value| line.include?(square) && value == ' ' }.keys.first
  end
end

def empty_square?(board)
  board.select { |_, value| value == ' ' }.keys
end

def user_turn(board)
  user_choice = ''
  loop do
    prompt "choose a square: #{joiner(empty_square?(board))}"
    user_choice = gets.chomp.to_i
    if empty_square?(board).include?(user_choice)
      board[user_choice] = PLAYER_MARKER
      break
    else
      prompt 'not a valid option, try again'
    end
  end
end

def computer_turn(board)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, board, COMPUTER_MARKER)
    break if square
  end

  if !square
    if board[5] == " "
      square = 5
    else
      WINNING_LINES.each do |line|
        square = find_at_risk_square(line, board, PLAYER_MARKER)
        break if square
      end
    end
  end

  if !square
    square = empty_square?(board).sample
  end
  board[square] = COMPUTER_MARKER
end

def someone_won(board)
  !!detect_winner(board)
end

def detect_winner(board)
  WINNING_LINES.each do |line|
    if board.values_at(*line).count('X') == 3
      return 'player'
    elsif board.values_at(*line).count('O') == 3
      return 'computer'
    end
  end
  nil
end

loop do
  board = initialise_board
  display_board(board)

  loop do
    user_turn(board)
    computer_turn(board)
    display_board(board)
    break if board.values.count(' ').zero? || someone_won(board)
  end

  clear_screen
  display_board(board)

  if someone_won(board)
    puts "The #{detect_winner(board)} won"
    if detect_winner(board) == "player"
      player_score += 1
    elsif detect_winner(board) == "computer"
      computer_score += 1
    end
  else
    prompt("It's a draw")
  end

  prompt("Player score:#{player_score}, computer score:#{computer_score}")

  if player_score == 5 || computer_score == 5
    player_score == 5 ? overall_winner = "player" : overall_winner = "computer"
    prompt "Overall winner is #{overall_winner}"
    break
  else
    answer = ""
    loop do
      prompt('play again (y or n?')
      answer = gets.chomp.downcase
      if answer == "y" || answer == "n"
        break
      else
        prompt "not a valid option"
      end
    end

    if answer == "n"
      prompt("thank you for playing - good bye")
      break
    end

  end
end
