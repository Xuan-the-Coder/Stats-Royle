class Player < ApplicationRecord
  belongs_to :clan
  has_many :battle through: :battle_player

  validates :tag, :role, :total_donation, :name, presence: true
end
