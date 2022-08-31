require 'rails_helper'

RSpec.describe 'the Lot creation' do
  it 'links to the New page from the Lots index' do
    visit '/lots'

    click_link('New Lot')

    expect(current_path).to eq('/lots/new')
  end

  it 'can create a new lot' do
    visit '/lots/new'

    fill_in('Name', with: 'Fossil')
    fill_in('Total cards', with: 62)
    fill_in('Original 150', with: true)
    fill_in('Release year', with: 1999)
    click_button('Create Lot')
    expect(current_path).to eq("/lots")
    expect(page).to have_content('Fossil')
  end


end

