require_relative "board"
 
 class Piece < Board 
  
    def initialize(color, pos) #board
      @color = color
      @pos = pos    #Array
      #super(board)
    end

    def board
      @board = Board.new
    end

    def self.is_valid?(pos)
        row, col = pos
        range = (0...8).to_a
        range.include?(row) && range.include?(col)
    end
    
    def self.populate_board
      board[0][0] = Rook.new(b)
      board[0][7] = Rook.new(b)
      board[7][0] = Rook.new(w)
      board[7][7] = Rook.new(w)
  
      board[0][1] = Knight.new(b)
      board[0][6] = Knight.new(b)
      board[7][1] = Knight.new(w)
      board[7][6] = Knight.new(w)
  
      board[0][2] = Bishop.new(b)
      board[0][5] = Bishop.new(b)
      board[7][2] = Bishop.new(w)
      board[7][5] = Bishop.new(w)
  
      board[0][4] = King.new(b)
      board[7][4] = King.new(w)
  
      board[0][3] = Queen.new(b)
      board[7][3] = Queen.new(w)
  
      (0...7).each do |col|
      
  
      board[1][col] = Pawn.new(b)
      board[2][col] = NullPiece.new
      board[3][col] = NullPiece.new
      board[4][col] = NullPiece.new
      board[5][col] = NullPiece.new
      board[6][col] = Pawn.new(w)
      end
      self.print_board
    end

      # def  

      # end
     
      
 end

#  b = [ [1,2,3,4,5,6], [2,3,4,5,6,7] ]
#  (0...7).each do |ele|
#  b[1][ele] = :x
#  end
#  p b 
