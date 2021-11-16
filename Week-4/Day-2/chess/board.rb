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

  def move_piece(start_pos, end_pos)
    # check piece's color 
    # valid moves are unique to different pieces
    if self[start_pos] != '_' 
      self[start_pos] =  'cat' # come fix me pls. value is placeholder for now
    else
      raise "ERROR - move piece"
    end
  end

  # initialize board, populate it and take a look
    def populate_board
        
    end
  
  
  
end

b= Board.new
p b.board
p b.move_piece([0,0],[1,2])
p b.board