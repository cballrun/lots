require 'rails_helper'

RSpec.describe 'the Card update' do
  before :each do
    @jungle = Lot.create!(name: "Jungle", total_cards: 64, original_150: true, release_year: 1999)
    @kangaskhan = @jungle.cards.create!(name: "Kangaskhan", value: 35, holo: true, rarity_symbol: "Star", condition: "LP", english: true, first_edition: true)
  end

  it 'links to the Card update page' do
    visit "/cards/#{@kangaskhan.id}"

    click_link "Update Card"

    expect(current_path).to eq("/cards/#{@kangaskhan.id}/edit")
  end

  it 'can edit the Card' do
    visit "/cards/#{@kangaskhan.id}/edit"

    fill_in('Name', with: "Lickitung")
    fill_in('Value', with: 1)
    fill_in('Holo', with: false)
    fill_in('Rarity symbol', with: "Diamond")
    fill_in('Condition', with: "LP")
    fill_in('English', with: true)
    fill_in('First edition', with: false)
    click_button "Update Card"

    expect(current_path).to eq("/cards/#{@kangaskhan.id}")
    expect(page).to have_content('Lickitung')
    expect(page).to have_content(1)
    expect(page).to_not have_content('Kangaskhan')
    expect(page).to_not have_content(35)
  end
end