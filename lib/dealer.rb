require_relative 'game.rb'

class Dealer
  attr_reader :players

  def initialize(name = "Dealer", players)
    @name, @players = name, players
  end

  def deal_one(player, deck)
    player.receive_card(deck.take(1))
  end

  def new_hand(deck)
    deck.shuffle
    2.times do
      players.each { |player| deal_one(deck, player) } unless player.folded?
    end
  end
end
