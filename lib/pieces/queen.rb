class Queen
  attr_reader :file, :rank, :colour, :symbol, :name

  MOVES = [[1, 1], [1, -1], [1, 0], [0, 1], [0, -1], [-1, 1], [-1, -1,], [-1, 0]].freeze

  def initialize(file, rank, colour)
    @file = file
    @rank = rank
    @colour = colour
    @name = 'Q'
    @symbol = assign_symbol(colour)
  end

  def assign_symbol(colour)
    colour == 'white' ? "\u2655" : "\u265b"
  end
end