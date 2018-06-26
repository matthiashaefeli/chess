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

# class Pawn inherits from Figure
class Pawn < Figure
  def initialize(position)
    super
    @moves = [[1, 0]]
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
    until count == -9
      moves.push([count, 0], [0, count])
      count -= 1
    end
    moves
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
end

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

# check if figure does exist
def figure_exist(figure)
  all_figures = %w[pawn rook knight bishop queen king]
  until all_figures.include?(figure.downcase)
    puts "I don't know the figure '#{figure}'!, please type figure again!"
    figure = gets.chomp
  end
  figure
end

# convert given position in array
def convert_position(position)
  position = [position.split('')[0].to_i, position.split('')[1]]
  position
end

# check if position does exist on board
def position_exist(position)
  position_array = convert_position(position)
  board = Board.new
  until board.include_square(position_array)
    puts "The position '#{position}' does not exist, please type position again! (ex: '1a')"
    position = gets.chomp
    position_array = convert_position(position)
    board = Board.new
  end
  position
end

# get all possible moves with given figure and position
def get_moves(figure, position)
  case figure.downcase
  when 'pawn'
    figure = Pawn.new(position)
  when 'rook'
    figure = Rook.new(position)
  when 'knight'
    figure = Knight.new(position)
  when 'bishop'
    figure = Bishop.new(position)
  when 'queen'
    figure = Queen.new(position)
  when 'king'
    figure = King.new(position)
  end
  figure.next_moves
end
