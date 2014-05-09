class BetsController < ApplicationController

  respond_to :json

  ##########
  # CUSTOM #
  ##########
  def proposed
    @bets = Bet.where(creator_id: current_user.id)
    respond_with @bets
  end

  def received 
    @bets = Bet.where(opponent_id: current_user.id)
    respond_with @bets
  end

  ##########
  #  CRUD  #
  ##########

  def index
    @bets = Bet.all
    respond_with @bets
  end

  def create
    @bet = current_user.proposed_bets.new bet_params

    if @bet.save
      respond_with @bet
    else
      render_error "Failed to place bet", 400 # or 422 
    end
  end

  def show
    set_bet
    respond_with @bet
  end

  def update
    set_bet
    if @bet.update(bet_params)
      respond_with @bet
    else
      render_error "Failed to alter bet", 400 # or 422 
    end
  end

  def delete
    set_bet
    if @bet.destroy
      respond_with status: 200, nothing: true
    else
      render_error "Failed to rescind bet", 400 # or 422 
    end
  end



  private
    def set_bet
      @bet = Bet.find(params[:id])
    end

    def bet_params
      params.require(:bet).permit(:currency, :quantity, :description, :opponent_id, :due_date)
    end
end
