require 'rails_helper'

RSpec.describe 'the lots show page' do
  before :each do 
    @lot = Lot.create!(name: "Jungle", total_cards: 64, original_150: true, release_year: 1999)
    #@card_1 = @lot.cards.create(name: "Magikarp", value: 3, holo: false, rarity_symbol: "Diamond", condition: "LP", english: true, first_edition: false)
    @lot_2 = Lot.create!(name: "Base Set", total_cards: 102, original_150: true, release_year: 1999)
  end
 

# As a visitor
# When I visit '/parents/:id'
# Then I see the parent with that id including the parent's attributes:
# - data from each column that is on the parent table

  
  it 'displays all of a single lots attributes on a page' do
    visit "lots/#{@lot.id}"

    expect(page).to have_content(@lot.id)
    expect(page).to have_content(@lot.name)
    expect(page).to have_content(@lot.total_cards)
    expect(page).to have_content(@lot.original_150)
    expect(page).to have_content(@lot.release_year)
    expect(page).to have_content(@lot.created_at)
    expect(page).to have_content(@lot.updated_at)
    expect(page).to_not have_content(@lot_2.name)
  end

  xit 'displays all cards and shows their names' do
    visit "/cards"
  end

  xit 'displays all cards and shows their names' do
    visit "/cards"
  end

  xit 'displays all of a single cards attributes on its page' do
    visit "cards/#{@card.id}"
  end

  


end