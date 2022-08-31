require 'rails_helper'

RSpec.describe 'the Lot update' do
  before :each do
    @jungle = Lot.create!(name: "Jungle", total_cards: 64, original_150: true, release_year: 1999)
  end

  it 'links to the Lot update page' do
    visit "/lots/#{@jungle.id}"

    click_link "Update Lot"

    expect(current_path).to eq("/lots/#{@jungle.id}/edit")
  end

  it 'can fully edit the Lot' do
    visit '/lots'
    
    expect(page).to have_content('Jungle')
    visit "/lots/#{@jungle.id}/edit"

    fill_in('Name', with: 'Fossil')
    fill_in('Total cards', with: 62)
    fill_in('Original 150', with: true)
    fill_in('Release year', with: 1999)
    click_button "Update Lot"

    expect(current_path).to eq("/lots/#{@jungle.id}")
    expect(page).to have_content('Fossil')
    expect(page).to have_content(62)
    expect(page).to_not have_content(64)
  end
end