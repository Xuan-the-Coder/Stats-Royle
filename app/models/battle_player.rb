class BattlePlayer < ApplicationRecord
  belongs_to :player
  belongs_to :battle

  validates :battle_date, presence: true
end
