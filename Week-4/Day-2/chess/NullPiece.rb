#require 'singleton'

class NullPiece #< Piece
#include Singleton 
attr_reader :symbol

  def initialize
    super
    @symbol = "_"
  end

  def move(pos)
     if board[pos]!= self.symbol 
      board[pos] = self.symbol
     end
  end
end