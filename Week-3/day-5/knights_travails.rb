#pair programming - Jerry + Zyaire
require_relative 'treenode.rb'

class KnightPathFinder

  attr_reader :considered_positions
  MOVES =[ [2,1], [2,-1], [-2,1] , [-2,-1],
           [1,2], [-1,-2], [1,-2], [-1,2]]

  def initialize(pos)
    @pos = pos
    @root_node = PolyTreeNode.new([0,0]) #possible self.root_node
    @considered_positions = [pos]
    self.build_move_tree
  end

  # def [](pos)
  #   row,col = pos 
  #   ...[row][col]
  # end


  # def build_move_tree
  #   PolyTreeNode.root_node # [0,0]
  # end

  # You'll also want to avoid repeating positions in the move tree. For instance, we don't want to infinitely explore moving betweeen the same two positions. Add an instance variable, @considered_positions to keep track of the positions you have considered; initialize it to the array containing just the starting pos. 
  
  # Write an instance method #new_move_positions(pos); this should call the ::valid_moves class method, but filter out any positions that are already in @considered_positions. It should then add the remaining new positions to @considered_positions and return these new positions.

  def self.valid_moves?(pos) # 8 possible moves
    MOVES.include?(pos)
  end

  def considered_moves(pos)
    @considered_positions << pos 
  end

  def new_move_positions(pos) # checks for valid move, if valid   adds to considered positions
    return if self.considered_positions.include?(pos)
    if KnightPathFinder.valid_moves?(pos)
      self.considered_moves(pos)
    end
  end

  #   To ensure that your tree represents only the shortest path to a given position, build your tree in a breadth-first manner. Take inspiration from your BFS algorithm: use a queue to process nodes in FIFO order. Start with a root node representing the start_pos and explore moves from one position at a time.

  # Next build nodes representing positions one move away, add these to the queue. Then take the next node from the queue... until the queue is empty.

  def build_move_tree
    queue = [root_node] #@root node value?
    until queue.empty?
      current = queue.shift 
      
    end
  end

  # def bfs(target)
  #   q = [self]
  #   until q.empty?
  #     next_node = q.shift
  #     return next_node if next_node.value == target
  #     q += next_node.children
  #   end
  #   nil
  # end
  
end