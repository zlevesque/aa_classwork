class Array

  def my_each(&block)
    i = 0
    while i < self.length
      block.call(self[i])
      i += 1
    end
    self
  end

  def my_select(&prc)

    arr = []

    self.my_each do |ele|

        if prc.call(ele)
            arr << ele
        end

    end

    arr
  end


end

# return_value = [1,2,3]
# p return_value.my_each {|x| x * 2}


a = [1, 2, 3]
p a.my_select { |num| num > 1 } # => [2, 3]
p a.my_select { |num| num == 4 } # => []
