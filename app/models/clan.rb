class Clan < ApplicationRecord
  has_many :players
  validates :tag, :name, :country, presence: true

  paginates_per 10
end
