class Battle < ApplicationRecord
  has_many :player through: :battle_player
  validates :type, :deck_selection, presence: true
end
