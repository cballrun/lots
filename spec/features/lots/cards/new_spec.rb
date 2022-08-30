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

  #   new_lot_id = Lot.last.id
  #   expect(current_path).to eq("/lots")
  #   expect(page).to have_content('Fossil')
  # end


end

# As a visitor
# When I visit a Parent Children Index page
# Then I see a link to add a new adoptable child for that parent "Create Child"
# When I click the link
# I am taken to '/parents/:parent_id/child_table_name/new' where I see a form to add a new adoptable child
# When I fill in the form with the child's attributes:
# And I click the button "Create Child"
# Then a `POST` request is sent to '/parents/:parent_id/child_table_name',
# a new child object/row is created for that parent,
# and I am redirected to the Parent Childs Index page where I can see the new child listed