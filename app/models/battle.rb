class Battle < ApplicationRecord
  has_many :player, through: :battle_player
  validates :game_mode, :deck_selection, presence: true
end
