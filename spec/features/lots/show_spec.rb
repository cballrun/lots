require 'rails_helper'

RSpec.describe 'the lots show page' do
  before :each do 
    @jungle = Lot.create!(name: "Jungle", total_cards: 64, original_150: true, release_year: 1999)
    @shadowless = Lot.create!(name: "Base Set", total_cards: 102, original_150: true, release_year: 1999)
    @kangaskhan = @jungle.cards.create!(name: "Kangaskhan", value: 35, holo: true, rarity_symbol: "Star", condition: "LP", english: true, first_edition: true)
    @lickitung = @jungle.cards.create!(name: "Lickitung", value: 1, holo: false, rarity_symbol: "Diamond", condition: "NM", english: true, first_edition: false)
    @magikarp = @shadowless.cards.create!(name: "Magikarp", value: 3, holo: false, rarity_symbol: "Diamond", condition: "LP", english: true, first_edition: false)
    visit "lots/#{@jungle.id}"
  end
 
  it 'displays all of a single lots attributes on a page' do
    expect(page).to have_content(@jungle.id)
    expect(page).to have_content(@jungle.name)
    expect(page).to have_content(@jungle.total_cards)
    expect(page).to have_content(@jungle.original_150)
    expect(page).to have_content(@jungle.release_year)
    expect(page).to have_content(@jungle.created_at)
    expect(page).to have_content(@jungle.updated_at)
    expect(page).to_not have_content(@shadowless.name)
  end

  it 'displays a count of the number of cards in a lot' do
    expect(page).to have_content(@jungle.cards.count)
  end

  it 'has a link to the card index page' do
    click_on "All Cards"

    expect(current_path).to eq("/cards")
  end

  it 'has a link to the lot index page' do
    click_on "All Lots"

    expect(current_path).to eq("/lots")
  end

  it 'has a link to the lots_cards index page' do
    click_on @jungle.name

    expect(current_path).to eq("/lots/#{@jungle.id}/cards")
  end

  it 'is has a link to update a Lot' do
    click_on "Update Lot"

    expect(current_path).to eq("/lots/#{@jungle.id}/edit")
  end

  it 'is able to delete a Lot with children' do
    click_on "Delete Lot"

    expect(current_path).to eq('/lots')
    expect(page).to_not have_content(@jungle.name)
    expect(page).to have_content(@shadowless.name)
  end
end