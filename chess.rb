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
end

# class Pawn inherits from Figure
class Pawn < Figure
  def initialize(position)
    super
    @moves = [[1, 0]]
  end

  def next_moves
    next_positions = []
    @moves.each do |move|
      pos = [(move[0] + @x), @y]
      next_positions.push(pos) if @board.include_square(pos)
    end
    next_positions
  end
end

# class Rook inherits from Figure
class Rook < Figure
  def initialize(position)
    super
    @moves = create_moves
  end 

  def create_moves
    moves = []
    count = 8
    until count == -8
      moves.push([count, 0], [0, count])
      count = count - 1
    end
    moves
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

# class Knight inherits from Figure
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

  def next_moves
    posible_moves = []
    @moves.each do |move|
      new_position = [@x + move[0], (@y.ord + move[1]).chr]
      if @board.include_square(new_position)
        posible_moves.push(new_position)
      end
    end
    posible_moves.sort
  end
end

# class Bishop inherits from Figure
class Bishop < Figure
  def initialize(position)
    super
    @moves = [
      [1, 1],
      [1, -1],
      [-1, 1],
      [-1, -1]
    ]
  end
end

# class Queen inherits from Figure
class Queen < Figure
  def initialize(position)
    super
    @moves = [
      [1, 0],
      [1, 1],
      [0, 1],
      [0, -1],
      [1, -1],
      [-1, 1],
      [-1, -1],
      [-1, 0]
    ]
  end
end

# class King inherits from Figure
class King < Figure
  def initialize(position)
    super
    @moves = [
      [1, 0],
      [1, 1],
      [1, -1],
      [0, 1],
      [0, -1],
      [-1, 1],
      [-1, -1],
      [-1, 0]
    ]
  end
end

# class Board to build a board
class Board
  def initialize
    @squares = []
    ('a'..'h').to_a.each do |letter|
      number = 1
      until number > 8
        @squares.push([number, letter])
        number += 1
      end
    end
  end

  def all_squares
    @squares
  end

  def include_square(space)
    @squares.include?(space)
  end
end
