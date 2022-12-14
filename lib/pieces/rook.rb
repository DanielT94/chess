class Rook
  attr_reader :file, :rank, :colour, :symbol, :name

  MOVES = [[1, 0], [-1, 0], [0, 1], [0, -1]].freeze

  def initialize(file, rank, colour)
    @file = file
    @rank = rank
    @colour = colour
    @name = 'R'
    @symbol = assign_symbol(colour)
  end

  def assign_symbol(colour)
    colour == 'white' ? "\u2656" : "\u265c"
  end
end