class Battle < ApplicationRecord
  has_many :players, through: :battle_players
  validates :game_mode, :opponent, presence: true
end
