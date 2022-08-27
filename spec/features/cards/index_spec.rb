require 'rails_helper'

RSpec.describe 'the cards index page' do
  before :each do 
    @lot_1 = Lot.create!(name: "Base Shadowless", total_cards: 102, original_150: true, release_year: 1999)
    @lot_2 = Lot.create!(name: "Jungle", total_cards: 64, original_150: true, release_year: 1999)
    @card_1 = @lot_1.cards.create!(name: "Magikarp", value: 3, holo: false, rarity_symbol: "Diamond", condition: "LP", english: true, first_edition: false)
    @card_2 = @lot_2.cards.create!(name: "Kangaskhan", value: 35, holo: true, rarity_symbol: "Star", condition: "LP", english: true, first_edition: true)
  end  

  it 'displays the names of all cards' do
    visit "/cards"
    
    expect(page).to have_content(@card_1.name)
    expect(page).to have_content(@card_2.name)
  end

  xit 'has a link to the card index page' do
    click_on "All Cards"

    expect(current_path).to eq("/cards")
  end

  xit 'has a link to the lot index page' do
    click_on "All Lots"

    expect(current_path).to eq("/lots")
  end



end