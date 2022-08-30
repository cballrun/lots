class LotCardsController < ApplicationController
  def index
    @lot = Lot.find(params[:lot_id])
    @cards = @lot.cards
  end
  #@cards = @lot.cards.order(:name)

  def new
    @lot = Lot.find(params[:lot_id])
  end

  # def create
  #   Card.create(card_params)
  #   redirect_to("/lot/#{params[:lot_id]}/cards")
  # end

  # def card_params
  #   params.permit(:card, :attributes, :here)
  # end

  # use ||= instead of if statement in params

end