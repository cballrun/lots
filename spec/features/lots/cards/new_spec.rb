require 'rails_helper'

RSpec.describe 'the Lot Cards creation' do
  before :each do
    @jungle = Lot.create!(name: "Jungle", total_cards: 64, original_150: true, release_year: 1999)
  end

  it 'links to the New page from the Lots Cards index' do
    visit "/lots/#{@jungle.id}/cards"

    click_link('Create Card')

    expect(current_path).to eq("/lots/#{@jungle.id}/cards/new")
  end

  it 'can create a new card' do
    visit "/lots/#{@jungle.id}/cards/new"
  
    fill_in('Name', with: "Lickitung")
    fill_in('Value', with: 1)
    fill_in('Holo', with: false)
    fill_in('Rarity symbol', with: "Diamond")
    fill_in('Condition', with: "LP")
    fill_in('English', with: true)
    fill_in('First edition', with: false)
    click_button('Create Card')

    expect(current_path).to eq("/lots/#{@jungle.id}/cards")
    
    expect(page).to have_content('Lickitung')
    expect(page).to have_content('Diamond')
    expect(@jungle.cards.last[:holo]).to eq(false)
    expect(@jungle.cards.last[:lot_id]).to eq(@jungle.id)
  end
end