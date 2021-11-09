require_relative 'card'

class Board

    attr_reader :size, :grid
    def initialize(n)
        @grid = Array.new(n) { Array.new(n) }
        @size = n * n
        #@shuffle = @grid.shuffle
        self.populate
    end

    def self.render(grid)
        grid.each do |row|
            puts row.join(' ')
        end
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos,card)
        row, col = pos
        @grid[row][col] = card 
    end

    def cards_maker
      pair = []
      cards = ("a".."z").to_a
      mark = cards.sample

        pair << Card.new(mark).value
        pair << Card.new(mark).value
        
        pair
    end

    def populate
      half_size = size / 2
      arr = []
      half_size.times do 
        arr += cards_maker
      end

      shuffled = arr.shuffle
      (0...@grid.length).each do |i|
        (0...@grid.length).each do |j|
          @grid[i][j] = shuffled.shift
        end
      end
    end

    

end

b = Board.new(4)
p b.populate
p b.grid
#b.cards_maker