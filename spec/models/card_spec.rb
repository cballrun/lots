require 'rails_helper'

RSpec.describe Card do
  it {should belong_to :lot}
  before :each do
    @shadowless = Lot.create!(name: "Base Shadowless", total_cards: 102, original_150: true, release_year: 1999)
    @jungle = Lot.create!(name: "Jungle", total_cards: 64, original_150: true, release_year: 1999)
    @magikarp = @shadowless.cards.create!(name: "Magikarp", value: 3, holo: false, rarity_symbol: "Diamond", condition: "LP", english: true, first_edition: false)
    @kangaskhan = @shadowless.cards.create!(name: "Kangaskhan", value: 35, holo: true, rarity_symbol: "Star", condition: "LP", english: true, first_edition: true)
    @pidgey = @shadowless.cards.create!(name: "Pidgey", value: 4, holo: false, rarity_symbol: "Circle", condition: "NM", english: true, first_edition: false)
  end

  it 'sorts cards by alphabetical order' do
    cards_abc_order = Card.abc_order
    
    expect(cards_abc_order).to eq([@kangaskhan, @magikarp, @pidgey])
  end

  it 'returns Cards with values over a given value' do
    expect(Card.value_cutoff(3)).to eq([@kangaskhan, @pidgey])
  end


end