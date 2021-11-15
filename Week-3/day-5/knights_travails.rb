#pair programming - Jerry + Zyaire
require_relative 'treenode.rb'

class KnightPathFinder

  attr_reader :considered_positions, :start_pos, :root_node
  MOVES =[ [2,1], [2,-1], [-2,1] , [-2,-1],
           [1,2], [-1,-2], [1,-2], [-1,2]]

  def valid_positions(pos) # pos = [1,1]
    arr = []

    MOVES.each do |coordinates|
      x = coordinates[0] + pos[0]
      y = coordinates[1] + pos[1]

      if new_move_positions([x,y])
        arr.push([x,y])
      end
    end
    
    arr

  end

  def initialize(start_pos)
    @start_pos = start_pos
    @considered_positions = [start_pos]
    @root_node = PolyTreeNode.new(start_pos)
    self.build_move_tree
  end

  # def build_move_tree
  #   PolyTreeNode.root_node # [0,0]
  # end

  # You'll also want to avoid repeating positions in the move tree. For instance, we don't want to infinitely explore moving betweeen the same two positions. Add an instance variable, @considered_positions to keep track of the positions you have considered; initialize it to the array containing just the starting pos. 
  
  # Write an instance method #new_move_positions(pos); this should call the ::valid_moves class method, but filter out any positions that are already in @considered_positions. It should then add the remaining new positions to @considered_positions and return these new positions.

  def self.valid_moves?(pos) # 8 possible moves
    row, col = pos
    return false if !(0...8).include?(row)
    return false if !(0...8).include?(col)
    true
    #MOVES.include?(pos)
  end

  def considered_moves(pos)
    @considered_positions << pos 
  end

  def new_move_positions(pos) # checks for valid move, if valid   adds to considered positions
    return if self.considered_positions.include?(pos)
    if KnightPathFinder.valid_moves?(pos)
      self.considered_moves(pos)
      return true
    end
  end

  #   To ensure that your tree represents only the shortest path to a given position, build your tree in a breadth-first manner. Take inspiration from your BFS algorithm: use a queue to process nodes in FIFO order. Start with a root node representing the start_pos and explore moves from one position at a time.

  # Next build nodes representing positions one move away, add these to the queue. Then take the next node from the queue... until the queue is empty.

  def build_move_tree
    queue = [@root_node] #queue = [@root_node]
    until queue.empty?
      current_node = queue.shift 
      current_value = current_node.value

      valid_positions(current_value).each do |move_position|
        new_node = PolyTreeNode.new(move_position)
        queue << new_node
      end
    end
  end

  # Create an instance method #find_path(end_pos) to search for end_pos in the move tree. You can use either dfs or bfs search methods from the PolyTreeNode exercises; it doesn't matter. This should return the tree node instance containing end_pos.

  def find_path(end_pos) 
    #@root node is the start position 
    @root_node.dfs(end_pos)
  end

  

  # This gives us a node, but not a path. Lastly, add a method #trace_path_back to KnightPathFinder. This should trace back from the node to the root using PolyTreeNode#parent. As it goes up-and-up toward the root, it should add each value to an array. #trace_path_back should return the values in order from the start position to the end position.
  
end

