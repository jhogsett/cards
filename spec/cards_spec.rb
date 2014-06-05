require 'spec_helper'

describe Cards do
  shared_examples_for "a usable deck" do
    it "creates an array" do
      expect(deck.get_cards).to be_a(Array)
    end

    it "creates an array of Card objects" do
      deck.get_cards.each do |card|
        expect(card).to be_a(Card)
      end
    end

    it "creates an array of different Card objects" do
      expect(deck.get_cards.uniq.count).to eq(deck.get_cards.count)
    end
  end

  context "standard deck types" do
    context "standard deck" do
      let(:cards) { Cards.new(:playing_cards) }

      it_behaves_like "a usable deck" do
        let(:deck) { cards }
      end

      it "creates a standard 52-card playing card deck" do
        expect(cards.get_cards.count).to eq(52)
      end
    end

    context "standard deck with jokers" do
      let(:cards) { Cards.new(:playing_cards_with_jokers) }

      it_behaves_like "a usable deck" do
        let(:deck) { cards }
      end

      it "creates a standard 54-card playing card deck with jokers" do
        expect(cards.get_cards.count).to eq(54)
      end
    end

    context "standard uno deck" do
      let(:cards) { Cards.new(:uno) }

      it_behaves_like "a usable deck" do
        let(:deck) { cards }
      end

      it "creates a standard 108-card Uno card deck" do
        expect(cards.get_cards.count).to eq(108)
      end
    end
  end

  context "custom desk types" do
    context "standard deck" do
      let(:cards) { Cards.new(33) }

      it_behaves_like "a usable deck" do
        let(:deck) { cards }
      end

      it "has the right number of card elements" do
        expect(cards.get_cards.count).to eq(33)
      end
    end
  end

end
