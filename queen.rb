require './figure.rb'

# class Queen inherits from Figure
class Queen < Figure
  def initialize(position)
    super
    @moves = create_moves
  end

  def create_moves
    moves = []
    count = 8
    counttwo = -8
    until count == -9
      moves.push([count, count], [count, counttwo], [count, 0], [0, count])
      count -= 1
      counttwo += 1
    end
    moves
  end
end
