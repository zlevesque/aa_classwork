
class Card
  attr_reader :value

  def initialize(value)
    @value = value
    @state = false
    
  end

  def hide
    @state = false
  end

  def reveal
    @state = true
    @value
  end

  def to_s
    @value.to_s
  end

  def ==(other_card)
    @value == other_card
  end



end

# c = Card.new(:L)
# d = Card.new(:L)
# p c.reveal
# p c.hide
# p d == c.value
# p c.to_s()
