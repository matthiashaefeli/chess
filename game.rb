require './chess.rb'

puts 'Get all possible moves for a chess figure'
puts 'Please type figure'
figure = gets.chomp.downcase
figure = figure_exist(figure)

puts 'please type position (ex: 1a)'
position = gets.chomp
position = position_exist(position)
puts "all posible moves with #{figure} from #{position} are:"
get_moves(figure, convert_position(position)).each do |move|
  puts move.join('')
end
