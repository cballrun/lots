require 'rails_helper'

RSpec.describe Lot do
  it {should have_many :cards}
end