
class Card
  attr_reader :pos, :value

  def initialize(value, pos)
    @value = value
    @state = false
    @pos = pos
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

c = Card.new(:L,[0,0])
d = Card.new(:L,[1,1])
p c.reveal
p c.hide
p d == c.value
p c.to_s()
