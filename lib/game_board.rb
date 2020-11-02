# frozen_string_literal: true

class GameBoard
  WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [6, 4, 2]
  ].freeze

  attr_accessor :game_board

  def initialize
    @game_board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end

  def display_game_board
    puts "|#{@game_board[0]}|#{@game_board[1]}|#{@game_board[2]}|"
    puts "|#{@game_board[3]}|#{@game_board[4]}|#{@game_board[5]}|"
    puts "|#{@game_board[6]}|#{@game_board[7]}|#{@game_board[8]}|"
  end

  def check_win(token)
    WIN_COMBINATIONS.any? do |com|
      com.all? { |index| @game_board[index] == token }
    end
  end

  def check_draw(token1, token2)
    @game_board.all? { |element| element == token1 || element == token2 }
  end
end
