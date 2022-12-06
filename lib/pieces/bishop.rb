class Bishop
  attr_reader :file, :rank, :colour, :symbol, :name

  MOVES = [].freeze

  def initialize(file, rank, colour)
    @file = file
    @rank = rank
    @colour = colour
    @name = 'B'
    @symbol = assign_symbol(colour)
  end

  def assign_symbol(colour)
    colour == 'white' ? "\u2657" : "\u265d"
  end
end