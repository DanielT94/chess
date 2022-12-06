module StartPosition

  def place_pawns
    place(Pawn.new(0, 1, 'black'), 0, 1)
    place(Pawn.new(1, 1, 'black'), 1, 1)
    place(Pawn.new(2, 1, 'black'), 2, 1)
    place(Pawn.new(3, 1, 'black'), 3, 1)
    place(Pawn.new(4, 1, 'black'), 4, 1)
    place(Pawn.new(5, 1, 'black'), 5, 1)
    place(Pawn.new(6, 1, 'black'), 6, 1)
    place(Pawn.new(7, 1, 'black'), 7, 1)
    place(Pawn.new(0, 6, 'white'), 0, 6)
    place(Pawn.new(1, 6, 'white'), 1, 6)
    place(Pawn.new(2, 6, 'white'), 2, 6)
    place(Pawn.new(3, 6, 'white'), 3, 6)
    place(Pawn.new(4, 6, 'white'), 4, 6)
    place(Pawn.new(5, 6, 'white'), 5, 6)
    place(Pawn.new(6, 6, 'white'), 6, 6)
    place(Pawn.new(7, 6, 'white'), 7, 6)
  end

  def place_rooks
    place(Rook.new(0, 0, 'black'), 0, 0)
    place(Rook.new(7, 0, 'black'), 7, 0)
    place(Rook.new(0, 7, 'white'), 0, 7)
    place(Rook.new(7, 7, 'white'), 7, 7)
  end

  def place_knights
    place(Knight.new(1, 0, 'black'), 1, 0)
    place(Knight.new(6, 0, 'black'), 6, 0)
    place(Knight.new(1, 7, 'white'), 1, 7)
    place(Knight.new(6, 7, 'white'), 6, 7)
  end

  def place_bishops
    place(Bishop.new(2, 0, 'black'), 2, 0)
    place(Bishop.new(5, 0, 'black'), 5, 0)
    place(Bishop.new(2, 7, 'white'), 2, 7)
    place(Bishop.new(5, 7, 'white'), 5, 7)
  end

  def place_queens
    place(Queen.new(3, 0, 'black'), 3, 0)
    place(Queen.new(3, 7, 'white'), 3, 7)
  end

  def place_kings
    place(King.new(4, 0, 'black'), 4, 0)
    place(King.new(4, 7, 'white'), 4, 7)
  end
end