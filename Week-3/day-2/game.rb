require_relative 'card'
require_relative 'board'
class Game

  def initialize(n)
    @board = Board.new(n)
    @last_card = "last_card"
    @next_card = "next_card"
  end

  def get_pos
    puts "select a row and col like '0 '1 "
    move = gets.chomp.split.map(&:to_i)
  end

  # def last_card(pos)
  #   @board[pos].reveal
  #   @last_card = @board[pos]
  # end



  def flip(pos)
    if check_pos(pos)
      @last_card.reveal
      @board[pos].reveal
    else
      @last_card.hide
    end
  end

  def play
    until @board.won?
      pos = get_pos
      @board[pos].reveal
      @board.render
      @last_card = @board[pos]
      
      pos_two = get_pos
      @board[pos_two].reveal
      @board.render
      @next_card = @board[pos_two]
      if !match?
        @last_card.hide
        @next_card.hide
      end
      puts "____________"
      @board.render
    end
    puts "YOU WON!!"
  end

  def match?
    @last_card.value == @next_card.value
  end

end

g = Game.new(2)
g.play