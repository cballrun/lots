class LotCardsController < ApplicationController
  def index
    @lot = Lot.find(params[:lot_id])
    if params[:sort] == "abc"
      @cards = @lot.cards.abc_order
    else
      @cards = @lot.cards
    end
   
  end
  #@cards = @lot.cards.order(:name)

  def new
    @lot = Lot.find(params[:lot_id])
  end

  def create
    @lot = Lot.find(params[:lot_id])
    @card = @lot.cards.create!(card_params)
    redirect_to("/lots/#{@lot.id}/cards")
  end

  def card_params
    params.permit(:name, :value, :holo, :rarity_symbol, :condition, :english, :first_edition)
  end

  # use ||= instead of if statement in params

end