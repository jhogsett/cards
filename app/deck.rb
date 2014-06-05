class Deck

  DECK_TYPES = [
    :playing_cards,
    :playing_cards_with_jokers,
    :uno,
    :custom
  ]

  DECK_SIZES = {
    playing_cards: 52,
    playing_cards_with_jokers: 54,
    uno: 108,
    custom: 0
  }

  def initialize(deck_type_or_number_of_cards)
    if deck_type_or_number_of_cards.is_a?(Symbol)
      @deck_size = DECK_SIZES[deck_type_or_number_of_cards]
      @deck_type = deck_type_or_number_of_cards
    else
      @deck_size = deck_type_or_number_of_cards
      @deck_type = :custom
    end
  end

  def get_cards
    array = []
    (1..@deck_size).each do
      array << Card.new
    end
    array
  end

end
