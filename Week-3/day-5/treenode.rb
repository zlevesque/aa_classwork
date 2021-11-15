#intro tree node
require "byebug"
class PolyTreeNode

  def initialize(value)
    @parent = nil
    @children = []
    @value = value
  end

  
  #should add the child node to the passed node's children

  def parent=(new_parent) 
    # debugger
    return if new_parent == @parent

    if self.parent != nil
      # should remove the node from its old parent's children
      self.parent.children.delete(self)
    end

    # should set a node's parent to the passed node
    @parent = new_parent

    #new_parent works too , handles nil without issue
    return if @parent == nil

    # should add the child node to the passed node's children
    new_parent.children.push(self)
    
  end

  def add_child(new_child) # new_child = ARRAY
    new_child.parent = self
  end

  def remove_child(new_child)
    return raise "Node is not a child" if new_child.parent == nil
    new_child.parent = nil
  end

  def dfs(target)
    return self if self.value == target
    return nil if self.children.empty?
    #debugger
    self.children.each do |child|
      child_store = child.dfs(target)
      return child_store if child_store != nil
    end
    nil
  end


  def bfs(target)
    q = [self]
    until q.empty?
      next_node = q.shift
      return next_node if next_node.value == target
      q += next_node.children
    end
    nil
  end


  attr_reader :parent, :children, :value

end
