lass Knight

  def self.valid_moves?(pos)
    row, col = pos
    path = [[row,col]]
    path += [
      [row+2, col+1],
      [row+1, col+2],
      [row-2, col-1],
      [row-1, col-2],
      [row+2, col-1],
      [row+1, col-2],
      [row-2, col+1],
      [row-1, col+2]
    ]
    valid_position?(path)
  end



  def self.valid_position(path)
    path.select do |pos|
        is_valid?(pos)
    end
  end

end

class King

end
