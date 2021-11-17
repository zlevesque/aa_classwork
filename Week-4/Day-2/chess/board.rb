

# Board Class

class Board 
  attr_reader :board #:row
  def initialize
    @board = Array.new(8) {Array.new(8, '_')}
    @size = (8 * 8)
    #@row = @board.each {|row| }
  end
  
  def [](pos)
    row, col = pos
    @board[row][col]
  end

  def []=(pos,val)
    row, col = pos
    @board[row][col] = val
  end

  # def move_piece(start_pos, end_pos)
  #   # check piece's color 
  #   # valid moves are unique to different pieces
  #   if self[start_pos] != '_' 
  #     self[start_pos] =  'cat' # come fix me pls. value is placeholder for now
  #   else
  #     raise "ERROR - move piece"
  #   end
  # end

  # # initialize board, populate it and take a look
  #   def start_chess
  #     board = self.new
  #     populate
  #   end
  
  
  # def populate_board
  #   board[0][0] = Rook.new(b)
  #   board[0][7] = Rook.new(b)
  #   board[7][0] = Rook.new(w)
  #   board[7][7] = Rook.new(w)

  #   board[0][1] = Knight.new(b)
  #   board[0][6] = Knight.new(b)
  #   board[7][1] = Knight.new(w)
  #   board[7][6] = Knight.new(w)

  #   board[0][2] = Bishop.new(b)
  #   board[0][5] = Bishop.new(b)
  #   board[7][2] = Bishop.new(w)
  #   board[7][5] = Bishop.new(w)

  #   board[0][4] = King.new(b)
  #   board[7][4] = King.new(w)

  #   board[0][3] = Queen.new(b)
  #   board[7][3] = Queen.new(w)

  #   (0...7).each do |col|
    

  #   board[1][col] = Pawn.new(b)
  #   board[2][col] = NullPiece.new
  #   board[3][col] = NullPiece.new
  #   board[4][col] = NullPiece.new
  #   board[5][col] = NullPiece.new
  #   board[6][col] = Pawn.new(w)
  #   end
  #   self.print_board
  # end

  def self.print_board
    board.each {|row| print row.join(" ")}
  end

  def self.current_print
    
  end

end

b= Board.new
# p b.board
# p b.move_piece([0,0],[1,2])
# p b.board