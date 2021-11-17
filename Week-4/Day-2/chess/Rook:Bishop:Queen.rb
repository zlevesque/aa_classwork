module Slideable

  def self.moves(pos) 
    row, col = pos
    #path = [[row,col]]
    all_pos = []
    valid_pos = []
    (-7..7).each do |v|
      (-7..7).each do |h|
        all_pos << [row+v, col+h]
        end
      end
    all_pos #225 pos
    
    horiz=[]
    all_pos.each do |coord| 
        if coord[0] >= 0 && coord[1] >= 0
          horiz<< coord 
        end
    end
    return horiz

  end

  def self.horizontal_dirs(pos)
    [row, col], #[0,7]
    [row, col],   # 
    [row, col],
    [row, col],
    [row, col],
    [row, col],
    [row, col],
    [row, col]
    
    [row, col],
    [row, col],
    [row, col],
    [row, col],
    [row, col],
    [row, col],
  end

  def diagnol_dirs(pos)

  end

  def self.is_valid?(pos)
    row, col = pos
    range = (0...8).to_a
    range.include?(row) && range.include?(col)
  end

end


class Rook < Piece

  def initialize
    @symbol = "R"
  end
  # def self.is_valid?(pos)
  #   row, col = pos
  #   range = (0...8).to_a
  #   range.include?(row) && range.include?(col)
  # end

  # def initialize(pos)
  
  # end
  
    # path += [
    #   [row+2, col+1],
    #   [row+1, col+2],
    #   [row-2, col-1],
    #   [row-1, col-2],
    #   [row+2, col-1],
    #   [row+1, col-2],
    #   [row-2, col+1],
    #   [row-1, col+2]
    # ]
    # valid_position?(path)
  

end

class Bishop < Piece
  def initialize
    @symbol = "B"
  end

end

class Queen < Piece
  def initialize
    @symbol = "Q"
  end
end

p Slideable.moves([0,0])
p Slideable.moves([0,0]).count

