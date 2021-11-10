require_relative 'card'
require 'byebug'

class Board

    attr_reader :size, :grid
    def initialize(n)
        @grid = Array.new(n) { Array.new(n) }
        @size = n * n
        self.populate
        self.render
    end

    def render
      g = self.grid_game
      g.each do |row|
            puts row.join('|')
        end
    end

    def grid_game
    arr = []
        grid.each do |row|
            v = []
            row.each do |el|
                if !el.state
                    v << '_'
                else
                    v << el.value
                end
            end
            arr << v
        end
        arr
    end
    
    def cheat
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

        pair << Card.new(mark)
        pair << Card.new(mark)
        
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

    def won?
      #debugger
      @grid.each do |row|
        row.each do |ele|
          if ele.state == false
            return false
          end
        end
      end
      true
    end
    

end


# p b.populate
# p b.grid

#b.cards_maker