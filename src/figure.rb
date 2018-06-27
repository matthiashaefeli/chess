require './src/board.rb'

# class Figure
class Figure
  attr_reader :moves

  def initialize(position)
    @x = position[0]
    @y = position[1]
    @board = Board.new
  end

  def position
    [@x, @y]
  end

  def next_moves
    posible_moves = []
    @moves.each do |move|
      new_position = [@x + move[0], (@y.ord + move[1]).chr]
      if @board.include_square(new_position) && new_position != position
        posible_moves.push(new_position)
      end
    end
    posible_moves.sort
  end
end
