module Deck
  attr_accessor :points, :deck_user

  def deck_add(card)
    @deck_user << card
  end

  def points
    @points = 0
    @deck_user.each do |item|
      @points += item.point
      item == 11? variable_alt = 10: variable_alt = 0
      @points -=variable_alt
    end
    @points
  end

  def open_cards
    @deck_user.each {|item| item.open_card}
  end
end

# class Test
#   include Deck
# end
# test = Test.new
#  test.deck_add(1)
#  test.deck_add(2)
#  test.deck_add(3)
# puts test.deck_user.inspect


