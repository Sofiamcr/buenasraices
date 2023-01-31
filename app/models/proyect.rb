class Proyect < ApplicationRecord
  CATEGORY = ["Deck", "Muelle"]
  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
