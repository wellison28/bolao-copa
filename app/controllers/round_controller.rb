class RoundController < ApplicationController
  def new
    @round = Round.find_by(number: 5)
  end

  def create

  end
end
