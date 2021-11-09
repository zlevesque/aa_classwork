require 'byebug'
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

  def my_reject(&block)
    
    arr = []

    self.my_each do |ele|

      if !block.call(ele)
        arr << ele
      end

    end

    arr
  end

  def my_any?(&block)

    self.my_each do |ele|

      return true if block.call(ele)
      
    end

    false

  end

  def my_all?(&block)

    self.my_each do |ele|

      return false if !block.call(ele)
      
    end

    true

  end

  def my_flatten
    arr = []
    self.each do |ele|

      if !ele.is_a?(Array)

        arr << ele 

      else

        arr += ele.my_flatten

      end

    end

    arr
  end

end

# return_value = [1,2,3]
# p return_value.my_each {|x| x * 2}


# a = [1, 2, 3]
# p a.my_select { |num| num > 1 } # => [2, 3]
# p a.my_select { |num| num == 4 } # => []

# a = [1, 2, 3]
# p a.my_reject { |num| num > 1 } # => [1]
# p a.my_reject { |num| num == 4 } # => [1, 2, 3]

# a = [1, 2, 3]
# p a.my_any? { |num| num > 1 } # => true
# p a.my_any? { |num| num == 4 } # => false
# p a.my_all? { |num| num > 1 } # => false
# p a.my_all? { |num| num < 4 } # => true

p [1, 2, 3, [4, [5, 6]], [[[7]], 8]].my_flatten # => [1, 2, 3, 4, 5, 6, 7, 8]
#p [1,2,3].my_flatten
