class Array

  def my_each(&block)
    i = 0
    while i < self.length
      block.call(i)
      i += 1
    end
    self
  end

end

return_value = [1,2,3]
p return_value.my_each {|x| x * 2}

