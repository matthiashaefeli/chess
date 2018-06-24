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

  def next_moves
    get_moves_x(position)
  end

  def get_moves_x(pos, posibles_positions = [])
    new_position = [(pos[0] + 1), pos[1]]
    if @board.include_square(new_position)
      posibles_positions.push(new_position)
      get_moves_x(new_position, posibles_positions)
    end
    posibles_positions
  end

  def get_moves_y(pos, posibles_positions = [])
    new_position = [pos[0], ]
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
