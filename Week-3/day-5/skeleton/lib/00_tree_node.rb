#intro tree node
class PolyTreeNode

  def initialize(value)
    @parent = nil
    @children = []
    @value = value
  end

  def parent=(node)
    @parent = node
    self.children.push(node)
  end

  attr_reader :parent, :children, :value

end