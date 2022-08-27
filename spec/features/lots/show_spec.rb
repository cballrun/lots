require 'rails_helper'

RSpec.describe 'the lots show page' do
  before :each do 
    @jungle = Lot.create!(name: "Jungle", total_cards: 64, original_150: true, release_year: 1999)
    @shadowless = Lot.create!(name: "Base Set", total_cards: 102, original_150: true, release_year: 1999)
    @kangaskhan = @jungle.cards.create!(name: "Kangaskhan", value: 35, holo: true, rarity_symbol: "Star", condition: "LP", english: true, first_edition: true)
    @lickitung = @jungle.cards.create!(name: "Lickitung", value: 1, holo: false, rarity_symbol: "Diamond", condition: "NM", english: true, first_edition: false)
    @magikarp = @shadowless.cards.create!(name: "Magikarp", value: 3, holo: false, rarity_symbol: "Diamond", condition: "LP", english: true, first_edition: false)
  end
 

  it 'displays all of a single lots attributes on a page' do
    visit "lots/#{@jungle.id}"

    expect(page).to have_content(@jungle.id)
    expect(page).to have_content(@jungle.name)
    expect(page).to have_content(@jungle.total_cards)
    expect(page).to have_content(@jungle.original_150)
    expect(page).to have_content(@jungle.release_year)
    expect(page).to have_content(@jungle.created_at)
    expect(page).to have_content(@jungle.updated_at)
    expect(page).to_not have_content(@shadowless.name)
  end

  it 'counts the number of cards associated with the lot' do
    visit "lots/#{@jungle.id}"

    expect(page).to have_content(@jungle.cards.count)
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