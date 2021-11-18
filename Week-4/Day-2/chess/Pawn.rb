#require_relative 'board'

class Pawn #< Piece
  attr_reader :symbol
  # test pawn information for gitpush
  def initialize
    super
    @symbol = "P"
  end

end