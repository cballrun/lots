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
    new_lot = Lot.create(name: params[:name], total_cards: params[:total_cards].to_i, original_150: params[:original_150], release_year: params[:release_year].to_i)
    redirect_to "/lots"
  end


end