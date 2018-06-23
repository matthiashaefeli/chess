class Pawn
  def initialize(position)
    @x = position[0]
    @y = position[1]

    @moves = [
      [1, 0]
    ]

    def position
      [@x,@y]
    end

    def moves
      @moves
    end

  end

end
