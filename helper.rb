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
