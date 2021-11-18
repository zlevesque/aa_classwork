
require_relative "NullPiece"
require_relative "KnightKing"
require_relative "RookBishopQueen" 
require_relative "Pawn"
require_relative "Piece"
require "byebug"
# Board Class
# board is its own class
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

  def populate_board
    # debugger
    self[[0,0]] = Rook.new.symbol
    
    self[[0,7]] = Rook.new.symbol
    self[[7,0]] = Rook.new.symbol
    self[[7,7]] = Rook.new.symbol
    self[[0,1]] = Knight.new.symbol
    self[[0,6]] = Knight.new.symbol
    self[[7,1]] = Knight.new.symbol 
    self[[7,6]] = Knight.new.symbol
    self[[0,2]] = Bishop.new.symbol
    self[[0,5]] = Bishop.new.symbol
    self[[7,2]] = Bishop.new.symbol
    self[[7,5]] = Bishop.new.symbol
    self[[0,4]] = King.new.symbol
    self[[7,4]] = King.new.symbol
    self[[0,3]] = Queen.new.symbol
    self[[7,3]] = Queen.new.symbol

    (0..7).each do |col|
    

    self[[1,col]] = Pawn.new.symbol
    self[[2,col]] = NullPiece.new.symbol
    self[[3,col]] = NullPiece.new.symbol
    self[[4,col]] = NullPiece.new.symbol
    self[[5,col]] = NullPiece.new.symbol
    self[[6,col]] = Pawn.new.symbol
    end
    
    print_board
  end


  def move_piece(start_pos, end_pos)
    # check piece's color 
    # valid moves are unique to different pieces
    if self[start_pos] != '_' 
      self[start_pos] =  'cat' # come fix me pls. value is placeholder for now
    else
      raise "ERROR - move piece"
    end
  end

  # # initialize board, populate it and take a look
  #   def start_chess
  #     board = self.new
  #     populate
  #   end
  
 

  def print_board
    board.each {|row| puts row.join(" ")}
  end

  def current_print
    
  end

end

b= Board.new
b.populate_board
# p b.move_piece([0,0],[1,2])
# p b.board