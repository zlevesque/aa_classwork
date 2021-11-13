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
    return if new_parent == parent

    if self.parent != nil
      self.parent.children.delete(self)
    end

    @parent = new_parent

    return nil if parent == nil

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
    self.children.each do |child|
      child_store = child.dfs(target)
      return child_store if child_store != nil
    end
    nil
  end



  attr_reader :parent, :children, :value

end

class Searchable

#   Write a #dfs(target_value) method which takes a value to search for and   performs the search. Write this recursively.
# First, check the value at this node. If a node's value matches the target value, return the node.
# If not, iterate through the #children and repeat.

  def dfs(value)
    return value if self == value
  end






end