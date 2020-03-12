class Clan < ApplicationRecord
  has_many :players
  validates :tag, :name, :country, presence: true
end
