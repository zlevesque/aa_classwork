require_relative 'tic_tac_toe'

class TicTacToeNode
  attr_reader :board, :next_mover_mark, :prev_move_pos

  def initialize(board, next_mover_mark, prev_move_pos = nil)
    @board = board
    @next_mover_mark = next_mover_mark
    @prev_mov_pos = prev_move_pos
    #@node = TicTacToeNode.new(board, next_mover_mark)
  end



  def losing_node?(evaluator)
  end

  def winning_node?(evaluator)
  end

  # This method generates an array of all moves that can be made after
  # the current move.
  def children
    (0...@board.length).each do |row|
      (0...@board.length).each do |col|
        if row, col != mark
          
        end
      end
    end
  end
end
