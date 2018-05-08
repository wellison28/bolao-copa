class Round < ApplicationRecord
  has_many :bets
  has_many :matches
end
