# require_relative "board"
# require_relative "NullPiece"
# require_relative "KnightKing"
# require_relative "RookBishopQueen" 
# require_relative "Pawn"


 class Piece 
    attr_reader :board, :pos
    attr_accessor :color
    def initialize(color,board, pos) #board
      @color = color
      @pos = pos    #Array
      #super(board)
      @board = board 
    end


    def self.is_valid?(pos)
        row, col = pos
        range = (0...8).to_a
        range.include?(row) && range.include?(col)
    end
    
    # def self.populate_board
    #   @board[0,0] = Rook.new.symbol
    #   @board[0,7] = Rook.new.symbol
    #   @board[7,0] = Rook.new.symbol
    #   @board[7,7] = Rook.new.symbol
    #   @board[0,1] = Knight.new.symbol
    #   @board[0,6] = Knight.new.symbol
    #   @board[7,1] = Knight.new.symbol 
    #   @board[7,6] = Knight.new.symbol
    #   @board[0,2] = Bishop.new.symbol
    #   @board[0,5] = Bishop.new.symbol
    #   @board[7,2] = Bishop.new.symbol
    #   @board[7,5] = Bishop.new.symbol
    #   @board[0,4] = King.new.symbol
    #   @board[7,4] = King.new.symbol
    #   @board[0,3] = Queen.new.symbol
    #   @board[7,3] = Queen.new.symbol
  
    #   (0...7).each do |col|
      
  
    #   @board[1,col] = Pawn.new.symbol
    #   @board[2,col] = NullPiece.new.symbol
    #   @board[3,col] = NullPiece.new.symbol
    #   @board[4,col] = NullPiece.new.symbol
    #   @board[5,col] = NullPiece.new.symbol
    #   @board[6,col] = Pawn.new.symbol
    #   end
    #   self.print_board
    # end

      # def  

      # end
     
      
 end

#  b = [ [1,2,3,4,5,6], [2,3,4,5,6,7] ]
#  (0...7).each do |ele|
#  b[1][ele] = :x
#  end
#  p b 
