class LotCardsController < ApplicationController
  def index
    @lot = Lot.find(params[:lot_id])
    if params[:sort] == "abc"
      @cards = @lot.cards.abc_order
    elsif params[:given_value]
      @cards = @lot.cards.value_cutoff(params[:given_value])
    else
      @cards = @lot.cards
    end
  end

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

  # maybe use ||= instead of if statement in params

end