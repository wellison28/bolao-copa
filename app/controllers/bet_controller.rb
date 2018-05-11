class BetController < ApplicationController
  before_action :authenticate_user!

  def index
    @bets = [] # Bet.where(user: current_user)
    games = Game.where(round: 5)
    games.each do |game|
      bet = game.bets.where(user: current_user).order(:created_at).last
      if bet.present?
        @bets.push(bet)
      end
    end
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
