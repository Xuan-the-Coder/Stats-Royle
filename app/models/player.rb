class Player < ApplicationRecord
  belongs_to :clan
  has_many :battle through: :battle_player
end
