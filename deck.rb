module Deck
  attr_accessor :points, :deck_user

  def deck_add(card)
    @deck_user << card
  end

  def points
    @points = 0
    @deck_user.each do |item|
    @points += item.point
     end
    3.times do |i|
      @points -= 10 if @deck_user[i-1].point == 11 && @points > 21
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


