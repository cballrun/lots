require 'rails_helper'

RSpec.describe 'the lots index page' do
  before :each do 
    @jungle = Lot.create!(name: "Jungle", total_cards: 64, original_150: true, release_year: 1999)
    @base = Lot.create!(name: "Base Set", total_cards: 102, original_150: true, release_year: 1999)
    @shadowless = Lot.create!(name: "Base Shadowless", total_cards: 102, original_150: true, release_year: 1999)
    visit "/lots"
  end  

  #eventually another describe block here?

  it 'displays the names of all lots' do
    expect(page).to have_content(@jungle.name)
    expect(page).to have_content(@shadowless.name)
  end

  it 'displays lots with most recently created first' do
    within("#lot-1") do
      expect(page).to have_content(@shadowless.name)
      expect(page).to have_content(@shadowless.created_at)
      expect(page).to_not have_content(@jungle.name)
     end
  end

  it 'shows when a lot was created' do
    expect(page).to have_content(@jungle.created_at)
    expect(page).to have_content(@base.created_at)
    expect(page).to have_content(@shadowless.created_at)
  end

  it 'has a link to the card index page' do
    click_on "All Cards"

    expect(current_path).to eq("/cards")
  end

  it 'has a link to the lot index page' do
    click_on "All Lots"

    expect(current_path).to eq("/lots")
  end

  it 'has a link for each lot to edit that lot' do
    click_on "Edit #{@jungle.name}"
    expect(current_path).to eq("/lots/#{@jungle.id}/edit")
  
    visit "/lots"
    click_on "Edit #{@shadowless.name}"
    expect(current_path).to eq("/lots/#{@shadowless.id}/edit")
  end

  it 'each Lot has a link for deletion that deletes that Lot' do
    expect(page).to have_content(@jungle.name)
    click_on "Delete #{@jungle.name}"
  
    expect(current_path).to eq('/lots')
    expect(page).to_not have_content(@jungle.name)
    expect(page).to have_content(@shadowless.name)
  end

  





end