 class Piece
    def initialize
    end

    def self.is_valid?(pos)
        row, col = pos
        range = (0...8).to_a
        range.include?(row) && range.include?(col)
      end
    
    
 end