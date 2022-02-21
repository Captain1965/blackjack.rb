class Card
attr_reader :suit, :point, :card

  def initialize (suit,card)
    @card = card
    @suit = suit
    @point = point
  end

  def open_card
    print "   #{card} #{suit}"
  end

  def point
    return 11 if @card == "A"
    return 10 if ['K', 'Q', 'J'].include?(@card)
    return @card.to_i if !['A','K','Q','J'].include?(@card)
  end
end

#Test
# card = Card.new('♥','A')
# puts card.open_card
# puts card.point


