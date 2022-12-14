require_relative 'modules/colours'
require_relative 'modules/start_position'
require_relative 'pieces/pawn'
require_relative 'pieces/rook'
require_relative 'pieces/knight'
require_relative 'pieces/bishop'
require_relative 'pieces/queen'
require_relative 'pieces/king'

class Board
  include Colours
  include StartPosition

  attr_reader :board

  def initialize
    @board = Array.new(8) { Array.new(8) }
  end
  
  def display_board
    puts '     a  b  c  d  e  f  g  h'
    chequered_board.size.times do |idx|
      printf("%<rank>3s %<board>-26s %<rank>-3s\n",
        { rank: (board.size - idx).to_s,
          board: chequered_board[idx].join,})
    end
    puts '     a  b  c  d  e  f  g  h'
  end

  def chequered_board
    board.map.with_index do |row, row_idx|
      row.map.with_index do |square, square_idx|
        if square.nil?
          paint_empty_squares(row_idx, square_idx)
        else
          paint_populated_squares(row_idx, square_idx, square)
        end
      end
    end
  end

  def paint_empty_squares(row_idx, square_idx)
    if (row_idx - square_idx).abs.odd?
      bg_light_green('   ')
    else
      bg_light_yellow('   ')
    end
  end

  def paint_populated_squares(row_idx, square_idx, square)
    if (row_idx - square_idx).abs.odd?
      bg_light_green(" #{square.symbol} ")
    else
      bg_light_yellow(" #{square.symbol} ")
    end
  end

  def place(piece, file, rank)
    board[rank][file] = piece
  end

  def populate_board
    place_pawns
    place_rooks
    place_knights
    place_bishops
    place_queens
    place_kings
  end
end

