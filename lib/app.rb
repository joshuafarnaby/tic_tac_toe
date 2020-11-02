# frozen_string_literal: true

require_relative 'player'
require_relative 'game_board'

puts 'Welcome to tic-tac-toe'

puts 'Player 1 enter your name:'
name1 = gets.chomp
puts 'Player 2 enter your name:'
name2 = gets.chomp

player1 = Player.new(name1, 'X')
player2 = Player.new(name2, 'O')

game_board = GameBoard.new

player1_turn = true
win = false

loop do
  game_board.display_game_board

  positon = player1_turn ? player1.gets_position(game_board) : player2.gets_position(game_board)

  player1_turn ? player1.put_token(game_board, positon) : player2.put_token(game_board, positon)

  break if game_board.check_draw(player1.token, player2.token)

  if game_board.check_win(player1_turn ? player1.token : player2.token)
    win = true
    break
  end

  player1_turn = !player1_turn
end

game_board.display_game_board

if win
  puts "Congratulations #{player1_turn ? player1.player_name : player2.player_name}, you win!"
else
  puts "It's a draw - #{player1.player_name} and #{player2.player_name} are evenly matched."
end
