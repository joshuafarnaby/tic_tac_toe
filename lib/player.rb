# frozen_string_literal: true

class Player
  attr_reader :player_name, :token

  def initialize(player_name, token)
    @player_name = player_name
    @token = token
  end

  def put_token(game_board, position)
    game_board.game_board[position - 1] = @token
  end

  def gets_position(game_board)
    loop do
      puts "#{@player_name}, please select a free position (from 1 - 9) to put your token:"
      position = gets.chomp

      return position.to_i if position_available?(game_board, position)

      puts 'That position is unavailable or invalid'
    end
  end

  def position_available?(game_board, position)
    return false if position.length > 1
    return false if position.to_i > 9 || position.to_i < 1

    index = position.to_i - 1

    return true if game_board.game_board[index] == ' '
  end
end
