class Pawn
  attr_reader :file, :rank, :colour, :symbol, :name

  MOVES = [[0, 1], [0, -1], [1, 1], [1, -1], [-1, 1], [-1, -1]].freeze

  def initialize(file, rank, colour)
    @file = file
    @rank = rank
    @colour = colour
    @name = 'p'
    @symbol = assign_symbol(colour)
  end

  def assign_symbol(colour)
    colour == 'white' ? "\u2659" : "\u265f"
  end
end