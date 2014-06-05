require 'spec_helper'

describe Cards do
  let(:cards) { Cards.new(33) }

  it "can be instantiated" do
    expect(cards).to be_a Cards
  end

  it "returns an array of cards" do
    expect(cards.get_cards).to be_a(Array)
    expect(cards.get_cards[0]).to be_a(Card)
  end

  it "has the right number of card elements" do
    expect(cards.get_cards.count).to eq(33)
  end

  context "standard card types" do
    it "creates a standard 52-card playing card deck" do
      cards = Cards.new(:playing_cards)
      expect(cards.get_cards.count).to eq(52)
    end

    it "creates a standard 54-card playing card deck with jokers" do
      cards = Cards.new(:playing_cards_with_jokers)
      expect(cards.get_cards.count).to eq(54)
    end

    it "creates a standard 108-card Uno card deck" do
      cards = Cards.new(:uno)
      expect(cards.get_cards.count).to eq(108)
    end


  end

end
