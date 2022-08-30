require 'rails_helper'

RSpec.describe 'Lots Cards index' do
  before :each do
    @shadowless = Lot.create!(name: "Base Shadowless", total_cards: 102, original_150: true, release_year: 1999)
    @jungle = Lot.create!(name: "Jungle", total_cards: 64, original_150: true, release_year: 1999)
    @magikarp = @shadowless.cards.create!(name: "Magikarp", value: 3, holo: false, rarity_symbol: "Diamond", condition: "LP", english: true, first_edition: false)
    @kangaskhan = @jungle.cards.create!(name: "Kangaskhan", value: 35, holo: true, rarity_symbol: "Star", condition: "LP", english: true, first_edition: true)
    @pidgey = @shadowless.cards.create!(name: "Pidgey", value: 3, holo: false, rarity_symbol: "Circle", condition: "NM", english: true, first_edition: false)
    visit "lots/#{@shadowless.id}/cards"
  end


  it 'shows all of the names of the cards for the set' do
    
    
    expect(page).to have_content(@magikarp.id)
    expect(page).to have_content(@magikarp.lot_id)
    expect(page).to have_content(@magikarp.name)
    expect(page).to have_content(@magikarp.value)
    expect(page).to have_content(@magikarp.holo)
    expect(page).to have_content(@magikarp.rarity_symbol)
    expect(page).to have_content(@magikarp.condition)
    expect(page).to have_content(@magikarp.english)
    expect(page).to have_content(@magikarp.first_edition)
    expect(page).to have_content(@magikarp.created_at)
    expect(page).to have_content(@magikarp.updated_at)
    expect(page).to have_content(@pidgey.name)
    expect(page).to_not have_content(@kangaskhan.name)
  end

  it 'has a link to the card index page' do #maybe move to layout test
    click_on "All Cards"
    
    expect(current_path).to eq("/cards")
  end

  it 'has a link to the lot index page' do
    click_on "All Lots"

    expect(current_path).to eq("/lots")
  end

  it 'has a link to sort Cards in alphabetical order' do
    click_link 'Sort Cards By Alphabetical Order'

    expect(current_path).to eq("/lots/#{@shadowless.id}/cards")
  
  end



  






end