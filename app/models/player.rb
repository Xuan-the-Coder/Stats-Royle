class Player < ApplicationRecord
  belongs_to :clan
  has_many :battle_player
  has_many :battles, through: :battle_player


  validates :tag, :role, :name, presence: true
end
