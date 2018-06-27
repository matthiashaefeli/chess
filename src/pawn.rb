require './src/figure.rb'

# class Pawn inherits from Figure
class Pawn < Figure
  def initialize(position)
    super
    @moves = [[1, 0]]
  end
end
