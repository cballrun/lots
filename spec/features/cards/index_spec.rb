require 'rails_helper'

RSpec.describe 'the cards index page' do
  before :each do 
    @shadowless = Lot.create!(name: "Base Shadowless", total_cards: 102, original_150: true, release_year: 1999)
    @jungle = Lot.create!(name: "Jungle", total_cards: 64, original_150: true, release_year: 1999)
    @magikarp = @shadowless.cards.create!(name: "Magikarp", value: 3, holo: false, rarity_symbol: "Diamond", condition: "LP", english: true, first_edition: false)
    @charizard = @shadowless.cards.create!(name: "Charizard", value: 500, holo: true, rarity_symbol: "Star", condition: "HP", english: true, first_edition: false)
    @dragonair = @shadowless.cards.create!(name: "Dragonair", value: 150, holo: false, rarity_symbol: "Star", condition: "LP", english: true, first_edition: true)
    @blastoise = @shadowless.cards.create(name: "Blastoise", value: 260, holo: true, rarity_symbol: "Star", condition: "LP", english: true, first_edition: false)
    @kangaskhan = @jungle.cards.create!(name: "Kangaskhan", value: 35, holo: true, rarity_symbol: "Star", condition: "LP", english: true, first_edition: true)
    visit "/cards"
  end  

  it 'has a link to the card index page' do
    click_on "All Cards"

    expect(current_path).to eq("/cards")
  end

  it 'has a link to the lot index page' do
    click_on "All Lots"

    expect(current_path).to eq("/lots")
  end

  it 'only shows Cards if they are holo' do
    expect(page).to have_content(@charizard.name)
    expect(page).to have_content(@blastoise.name)
    expect(page).to have_content(@kangaskhan.name)

    expect(page).to_not have_content(@magikarp.name)
    expect(page).to_not have_content(@dragonair.name)
  end



end