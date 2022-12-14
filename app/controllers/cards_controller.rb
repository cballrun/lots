class CardsController < ApplicationController
  
  def index
    @cards = Card.where(holo: true)
  end

  def show
    @card = Card.find(params[:id])
  end

  def edit
    @card = Card.find(params[:id])
  end

  def update
    card = Card.find(params[:id])
    card.update(card_params)
    redirect_to "/cards/#{card.id}"
  end

  def destroy
    card = Card.find(params[:id]).destroy
    redirect_to '/cards'
  end

  def card_params
    params.permit(:name, :value, :holo, :rarity_symbol, :condition, :english, :first_edition)
  end

end