#intro tree node
require "byebug"
class PolyTreeNode

  def initialize(value)
    @parent = nil
    @children = []
    @value = value
  end

  #should add the child node to the passed node's children

  def parent=(node) 
    # debugger
    return if node == parent 
    @parent = node
    node.children.push(self) 
    @parent = nil if parent == nil
    # node.parent.children.shift(node)
  end

  def add_child
    
  end

  attr_reader :parent, :children, :value

end