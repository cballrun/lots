require 'rails_helper'

RSpec.describe 'the lots index page' do
  before :each do 
    @lot = Lot.create(name: "Jungle", total_cards: 64, original_150: true, release_year: 1999)
    
  end  

  it 'displays the names of all lots' do
    visit "/lots"
    
  end