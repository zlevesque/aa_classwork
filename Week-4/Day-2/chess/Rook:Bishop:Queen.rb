
require "byebug"

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
          horiz << coord 
        end
    end
    return horiz

  end

  def self.horizontal_dirs(pos)

    row, col = pos 
    vert_move=[]
    hori_move=[]

    (-7..7).each do |v|
      (-7..7).each do |h|
        # ranges shouldn't go up to 7
        #  [1,0] [-1,0] [0,1] [0.-1]
        if row + v <8 && row + v >= 0 
            vert_moves << [row + v, col]
             if @board[[row+v,col]] != '_'
            vert_moves << [row + v, col]
            break
             end
        end
        if col + h < 8 && col + h >-0
          hori_move<< [row, col+h]
         debugger
          if @board[[row,col+h]] != '_' 
            hori_move<< [row, col+h]
            break 
          end
          
        end
      end
    end
    true_moves =vert_move += hori_move
   
    
    # [row, col],
    # [row, col],
    # [row, col],
    # [row, col]
    
    # [row, col],
    # [row, col],
    # [row, col],
    # [row, col],
    # [row, col],
    # [row, col],
    
    # all_positions = []
    # DIRS = [[0, 1], [0,7],[1, 0],[-1, 0], [0, -1]]
    # current_row, current_col = pos
    # loop 
    # dirs.each do |arr_pos|
    #   new_r = current_row += arr_pos
    #   new_col = current_col += arr_pos

    #   if new_position.empty? && not_color?
    #     all_positions << new_pos
    #   end
    # end




  end

  def diagnol_dirs(pos)
    # [0,7]
    # [1,6]
    # [2,5]
    # [i,7-i]


    # [0,3]
    # [1,2]
    # [2,1]
    # [i, 3-i]

    # [4,3] start 
    # where can i move


  end

  def self.is_valid?(pos)
    row, col = pos
    range = (0...8).to_a
    range.include?(row) && range.include?(col)
  end

end


class Rook #< Piece
  attr_reader :symbol
  def initialize
    #super
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

class Bishop #< Piece
  attr_reader :symbol
  def initialize
    #super
    @symbol = "B"
    
  end

end

class Queen #< Piece
  attr_reader :symbol
  def initialize
    #super
    @symbol = "Q"
  end
end

# p Slideable.moves([0,0])
# p Slideable.moves([0,0]).count
p Slideable.Rook.horizontal_dirs([2,3])

