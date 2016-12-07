require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

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

def empty_square?(board)
  board.select { |_, v| v == ' ' }.keys
end

def user_turn(board)
  user_choice = ''
  loop do
    prompt "choose a square: #{joiner(empty_square?(board))}"
    user_choice = gets.chomp.to_i
    if empty_square?(board).include?(user_choice)
      board[user_choice] = 'X'
      break
    else
      prompt 'not a valid option, try again'
    end
  end
end

def computer_turn(board)
  computer_choice = empty_square?(board).sample
  board[computer_choice] = 'O'
end

def someone_won(board)
  !!detect_winner(board)
end

def detect_winner(board)
  WINNING_LINES.each do |line|
    if board.values_at(line[0], line[1], line[2]).count('X') == 3
      return 'player'
    elsif board.values_at(line[0], line[1], line[2]).count('O') == 3
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
  puts
  if someone_won(board)
    puts "The #{detect_winner(board)} won"
  else
    puts "It's a draw"
  end

  prompt('play again?')
  if gets.chomp.start_with?('y')
  else
    prompt('thanks for playing - good bye')
    break
  end
end
