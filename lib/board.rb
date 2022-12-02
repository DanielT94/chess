require_relative './lib/modules/colours'

class Board
  include Colours

  def initialize
    @board = Array.new(8) { Array.new(8) }
  end
  
  def display_board
    puts 'a b c d e f g h'
  end

  def chequered_board
    board.map.with_index do |row, row_idx|
      row.map.with_index do |square, square_idx|
        if square.nil?
          paint_empty_squares
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
end

