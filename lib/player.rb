require_relative 'hand.rb'

class Player
  attr_reader :name, :chips, :folded
  attr_accessor :hand

  def initialize(name = "Jeff")
    @name, @chips = name, chips
    @folded = false
    @hand = Hand.new
  end

  def fold
    @folded = true
  end

  def folded?
    @folded
  end

  def hit(dealer, deck)
    dealer.deal_one(self, deck)
  end

  def return_cards(deck)
    @hand.return_to_deck(deck)
  end

  def place_bet(dealer, bet_amt)
  end

  def take_money(pot)
  end

  def receive_card(card)
    hand.cards.concat(card)
  end

  def pay_blind
  end

  def show_hand
    hand.cards.each do |card|
      p card.to_s
    end
  end
end
