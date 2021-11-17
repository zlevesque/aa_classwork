require 'singleton'

class NullPiece < Piece
include Singleton 
  #nullpiece git comment test
  def initialize
    @symbol = "_"
  end

  def move(pos)
     if board[pos]!= self.symbol 
      board[pos] = self.symbol
     end
  end
end