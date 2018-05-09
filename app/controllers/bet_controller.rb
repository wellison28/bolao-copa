class BetController < ApplicationController

  def index
    @games = Game.where(round: 5)
  end

  def new
    game = Game.where(round: 5)
    @games = []
    game.each {|g| @games.push(g.bets.build) }
  end

  def create
    bet = Bet.new(bet_params)
    bet.save
  end

  private

  def bet_params
    params.require(:bet).permit(:goal_home, :goal_guest, :user_id, :game_id)
  end
end
