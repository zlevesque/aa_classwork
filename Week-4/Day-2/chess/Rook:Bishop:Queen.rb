Module Slideable

end


class Rook < Piece
  # def self.is_valid?(pos)
  #   row, col = pos
  #   range = (0...8).to_a
  #   range.include?(row) && range.include?(col)
  # end

  # def initialize(pos)
  
  # end
  def self.valid_moves?(pos)
    row, col = pos
    path = [[row,col]]
    (-7..7).each do |v|
      (-7..7).each do |h|
        if Piece.is_valid?(pos)
          [row+v, col+h]
          
        end

      end
    end
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
  

end

class Bishop

end

class Queen

end