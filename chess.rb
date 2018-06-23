class Figure
  attr_reader :moves

  def initialize(position)
    @x = position[0]
    @y = position[1]
  end

  def position
    [@x, @y]
  end
end

class Pawn < Figure
  def initialize(position)
    super
    @moves = [[1, 0]]
  end
end

class Rook < Figure
  def initialize(position)
    super
    @moves = [
      [1, 0],
      [-1, 0],
      [0, 1],
      [0, -1]
    ]
  end
end

class Knight < Figure
  def initialize(position)
    super
    @moves = [
      [2, 1],
      [2, -1],
      [1, 2],
      [1, -2],
      [-1, 2],
      [-1, -2],
      [-2, 1],
      [-2, -1]
    ]
  end
end
