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
    fill_in('Total Cards', with: 62)
    fill_in('Original 150', with: true)
    fill_in('Release Year', with: 1999)
    click_button('Create Lot')
    new_lot_id = Lot.last.id
    expect(current_path).to eq("/lots")
    expect(page).to have_content('Fossil')
  end


end

# As a visitor
# When I visit the Parent Index page
# Then I see a link to create a new Parent record, "New Parent"
# When I click this link
# Then I am taken to '/parents/new' where I  see a form for a new parent record
# When I fill out the form with a new parent's attributes:
# And I click the button "Create Parent" to submit the form
# Then a `POST` request is sent to the '/parents' route,
# a new parent record is created,
# and I am redirected to the Parent Index page where I see the new Parent displayed.