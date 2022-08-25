require 'rails_helper'

RSpec.describe 'the cards show page' do
  before :each do 
    @lot_1 = Lot.create!(name: "Base Shadowless", total_cards: 102, original_150: true, release_year: 1999)
    @lot_2 = Lot.create!(name: "Jungle", total_cards: 64, original_150: true, release_year: 1999)
    @card_1 = @lot_1.cards.create!(name: "Magikarp", value: 3, holo: false, rarity_symbol: "Diamond", condition: "LP", english: true, first_edition: false)
    @card_2 = @lot_2.cards.create!(name: "Kangaskhan", value: 35, holo: true, rarity_symbol: "Star", condition: "LP", english: true, first_edition: true)
  end

  it 'displays all of a single cards attributes on a page' do
    visit "cards/#{@card_1.id}"
    
    expect(page).to have_content(@card_1.id)
    expect(page).to have_content(@card_1.lot_id)
    expect(page).to have_content(@card_1.name)
    expect(page).to have_content(@card_1.value)
    expect(page).to have_content(@card_1.holo)
    expect(page).to have_content(@card_1.rarity_symbol)
    expect(page).to have_content(@card_1.condition)
    expect(page).to have_content(@card_1.english)
    expect(page).to have_content(@card_1.first_edition)
    expect(page).to have_content(@card_1.created_at)
    expect(page).to have_content(@card_1.updated_at)
    expect(page).to_not have_content(@card_2.name)
  end




end