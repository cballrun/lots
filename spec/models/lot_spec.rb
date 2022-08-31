require 'rails_helper'

RSpec.describe Lot do
  it {should have_many :cards}
  before :each do 
    @jungle = Lot.create!(name: "Jungle", total_cards: 64, original_150: true, release_year: 1999)
    @base = Lot.create!(name: "Base Set", total_cards: 102, original_150: true, release_year: 1999)
    @shadowless = Lot.create!(name: "Base Shadowless", total_cards: 102, original_150: true, release_year: 1999)
  end

  it 'can order by most recently made' do
    expect(Lot.most_recent).to eq([@shadowless, @base, @jungle])
  end
end