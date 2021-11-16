# Board Class
class Board
  attr_reader :board, #:row
  def initialize
    @board = Array.new(8) {Array.new(8, nil)}
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
    if start_pos != nil && end_pos == nil
      
    else
      raise "ERROR - move piece"
    end
  end
  
end