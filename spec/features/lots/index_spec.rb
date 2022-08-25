require 'rails_helper'

RSpec.describe 'the lots index page' do
  before :each do 
    @jungle = Lot.create!(name: "Jungle", total_cards: 64, original_150: true, release_year: 1999)
    @base = Lot.create!(name: "Base Set", total_cards: 102, original_150: true, release_year: 1999)
    @shadowless = Lot.create!(name: "Base Shadowless", total_cards: 102, original_150: true, release_year: 1999)
  end  

  #eventually another describe block here?

  it 'displays the names of all lots' do
    visit "/lots"
    
    expect(page).to have_content(@jungle.name)
  end

  xit 'displays lots with most recently created first' do
    visit '/lots'

  end

  it 'shows when a lot was created' do
    visit '/lots'
    save_and_open_page
    expect(page).to have_content(@jungle.created_at)
    expect(page).to have_content(@base.created_at)
  end





end