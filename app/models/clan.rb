class Clan < ApplicationRecord
  has_many :player
  validates :tag, :name, :country, presence: true
end
