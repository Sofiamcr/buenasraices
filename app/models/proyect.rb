class Proyect < ApplicationRecord
  belongs_to :category
  has_many_attached :photos
  CATEGORY = ["Deck", "Muelles", "Fogones", "Huertas", "Pergolas", "Tablestacados", "Cerco y Empalizada"]
  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
