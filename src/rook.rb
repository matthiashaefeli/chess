require './src/figure.rb'

# class Rook inherits from Figure
class Rook < Figure
  def initialize(position)
    super
    @moves = create_moves
  end

  def create_moves
    moves = []
    count = 8
    until count == -9
      moves.push([count, 0], [0, count])
      count -= 1
    end
    moves
  end
end
