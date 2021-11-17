module Slideable

  def self.moves(pos)
    row, col = pos
    #path = [[row,col]]
    all_pos = []
    valid_pos = []
    (-7..7).each do |v|
      (-7..7).each do |h|
        all_pos << [row+v, col+h]
        all_pos.each do |coord| 
          if coord[0] >= 0 && coord[1] >= 0
            valid<< coord 
          end
        end
      end
    end
    valid
  end

  def self.horizontal_dirs(pos)
    moves =self.moves(pos)
    horiz=[]
    moves.each do |coord| 
        if coord[0] >= 0 && coord[1] >= 0
          horiz<< coord 
        end
    end
    return horiz
  end

  def diagnol_dirs(pos)

  end

  def self.is_valid?(pos)
    row, col = pos
    range = (0...8).to_a
    range.include?(row) && range.include?(col)
  end

end


# class Rook < Piece
#   # def self.is_valid?(pos)
#   #   row, col = pos
#   #   range = (0...8).to_a
#   #   range.include?(row) && range.include?(col)
#   # end

#   # def initialize(pos)
  
#   # end
  
#     # path += [
#     #   [row+2, col+1],
#     #   [row+1, col+2],
#     #   [row-2, col-1],
#     #   [row-1, col-2],
#     #   [row+2, col-1],
#     #   [row+1, col-2],
#     #   [row-2, col+1],
#     #   [row-1, col+2]
#     # ]
#     # valid_position?(path)
  

# end

# class Bishop

# end

# class Queen

# end


p Slideable.moves([0,0])
