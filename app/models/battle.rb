class Battle < ApplicationRecord
  has_many :player through: :battle_player
end
