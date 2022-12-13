class King
  attr_reader :file, :rank, :colour, :symbol, :name

  MOVES = [[1, 1], [1, -1], [1, 0], [0, 1], [0, -1], [-1, 1], [-1, -1,], [-1, 0]].freeze

  def initialize(file, rank, colour)
    @file = file
    @rank = rank
    @colour = colour
    @name = 'K'
    @symbol = assign_symbol(colour)
  end

  def assign_symbol(colour)
    colour == 'white' ? "\u2654" : "\u265a"
  end
end