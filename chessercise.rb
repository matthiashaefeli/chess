require './src/helper.rb'

def start
  figure_exist(ARGV[1]) ? figure = ARGV[1] : error = "Piece #{ARGV[1]} does not exist"

  if position_exist(ARGV[3].reverse)
    position = ARGV[3].reverse
  elsif position_exist(ARGV[3])
    position = ARGV[3]
  else
    error = "Position #{ARGV[3]} does not exist"
  end

  if error
    puts error
  else
    moves = get_moves(figure, convert_position(position)).map { |m| m.reverse.join('') }
    puts moves.join(' ')
  end
end

start
