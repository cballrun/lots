require 'rails_helper'

RSpec.describe Card do
  it {should belong_to :lot}
end