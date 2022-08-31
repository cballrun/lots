class LotsController < ApplicationController
  def index
    @lots = Lot.all
  end

  def show
    @this_lot = Lot.find(params[:id])
  end
  
  def new

  end

  def create
    new_lot = Lot.create(lot_params)
    redirect_to "/lots"
  end
  
  def lot_params
    params.permit(:name, :total_cards, :original_150, :release_year)
  end

  def edit
    @this_lot = Lot.find(params[:id])
  end

  def update
    this_lot = Lot.find(params[:id])
    this_lot.update(lot_params)
    redirect_to "/lots/#{this_lot.id}"
  end

  def destroy
    cards = Card.where(lot_id: params[:id])
    this_lot = Lot.find(params[:id])
    cards.destroy_all
    this_lot.destroy
    redirect_to '/lots'
  end
end