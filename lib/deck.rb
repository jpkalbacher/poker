require_relative 'card'

class Deck


  def initialize
    @cards = populate_deck
  end

  def populate_deck
    cards = []
    Card::SUIT_STRINGS.keys.each do |suit|
      Card::VALUE_STRINGS.keys.each do |value|
        cards << Card.new(suit,value)
      end
    end
    cards
  end

  def count
    @cards.length
  end

  def shuffle
    @cards.shuffle!
  end

  def take(n)
    @cards.shift(n)
  end

  def return_cards(cards)
    @cards.concat(cards)
  end
end
