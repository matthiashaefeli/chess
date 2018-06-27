require './figure.rb'

# class Bishop inherits from Figure
class Bishop < Figure
  def initialize(position)
    super
    @moves = create_moves
  end

  def create_moves
    moves = []
    count = 8
    counttwo = -8
    until count == -9
      moves.push([count, count], [count, counttwo])
      count -= 1
      counttwo += 1
    end
    moves
  end
end
