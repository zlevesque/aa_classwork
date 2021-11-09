require_relative 'card'

class Board

    attr_reader :size 
    def initialize(n)
        @grid = Array.new(n) { Array.new(n)}
        @size = n * n
        @shuffle = @grid.shuffle
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

    def populate

        while pairs < (@size * 0.5)
        row = rand(0...@grid.length)
        col = rand(0...@grid.length)
            pos = [row, col]
            self[pos] = card
        end
    end

    

end