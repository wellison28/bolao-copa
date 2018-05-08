class Match < ApplicationRecord
  has_many :bets
  belongs_to :round
end
