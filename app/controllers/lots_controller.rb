class LotsController < ApplicationController
  def index
    @lots = Lot.all
  end

  # def show
  #   @lot = Lot.find(params[:id])
  # end
  
  def new

  end

  def create
    new_lot = Lot.create(lot_params)
    redirect_to "/lots"
  end
  
  def lot_params
    params.permit(:name, :total_cards, :original_150, :release_year)
  end



end