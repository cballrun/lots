class LotCardsController < ApplicationController
  def index
    lot = Lot.find(params[:lot_id])
    @cards = lot.cards
  end

end