class BattlePlayer < ApplicationRecord
  belongs_to :player
  belongs_to :battle
end
