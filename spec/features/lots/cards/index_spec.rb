require 'rails_helper'

RSpec.describe 'Sets cards index' do
  before :each do
    @shadowless = Lot.create!(name: "Base Shadowless", total_cards: 102, original_150: true, release_year: 1999)
    @jungle = Lot.create!(name: "Jungle", total_cards: 64, original_150: true, release_year: 1999)
    @magikarp = @shadowless.cards.create!(name: "Magikarp", value: 3, holo: false, rarity_symbol: "Diamond", condition: "LP", english: true, first_edition: false)
    @kangaskhan = @jungle.cards.create!(name: "Kangaskhan", value: 35, holo: true, rarity_symbol: "Star", condition: "LP", english: true, first_edition: true)
    @pidgey = @shadowless.cards.create!(name: "Pidgey", value: 3, holo: false, rarity_symbol: "Circle", condition: "NM", english: true, first_edition: false)
  end


  it 'shows all of the names of the cards for the set' do
    visit "lots/#{@shadowless.id}/cards"

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
  end

  it 'links to each cards show page' do

  end






end