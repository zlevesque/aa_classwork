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

  def my_zip(*arr)

    answer = []

    (0...self.length).each do |idx|
      a = []

      a << self[idx]

      i = 0
      while i < arr.length
        a << arr[i][idx]
        i += 1
      end

      answer << a
    end

    answer
  end

  def my_rotate(n = 1)
    arr = self.map { |ele| ele }

    if n > 0
      n.times { arr.push(arr.shift) }
    else
      n.abs.times { arr.unshift(arr.pop) }
    end

    arr
  end

  def my_join(sep="")
    str = ""

    self.each do |ele|

      str += ele

      str += sep

    end

    str
  end

  def my_reverse

    self.reverse

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

#p [1, 2, 3, [4, [5, 6]], [[[7]], 8]].my_flatten # => [1, 2, 3, 4, 5, 6, 7, 8]
#p [1,2,3].my_flatten


# a = [ 4, 5, 6 ]
# b = [ 7, 8, 9 ]
# p [1, 2, 3].my_zip(a, b) # => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
# p a.my_zip([1,2], [8])   # => [[4, 1, 8], [5, 2, nil], [6, nil, nil]]
# p [1, 2].my_zip(a, b)    # => [[1, 4, 7], [2, 5, 8]]

# c = [10, 11, 12]
# d = [13, 14, 15]
# [1, 2].my_zip(a, b, c, d)    # => [[1, 4, 7, 10, 13], [2, 5, 8, 11, 14]]

# a = [ "a", "b", "c", "d" ]
# p a.my_rotate         #=> ["b", "c", "d", "a"]
# p a.my_rotate(2)      #=> ["c", "d", "a", "b"]
# p a.my_rotate(-3)     #=> ["b", "c", "d", "a"]
# p a.my_rotate(15)     #=> ["d", "a", "b", "c"]

# p a = [ "a", "b", "c", "d" ]
# p a.my_join         # => "abcd"
# p a.my_join("$")    # => "a$b$c$d"

p [ "a", "b", "c" ].my_reverse   #=> ["c", "b", "a"]
p [ 1 ].my_reverse               #=> [1]