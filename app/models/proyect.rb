class Proyect < ApplicationRecord
  belongs_to :category
  has_many_attached :photos
  validates :name, presence: true
end
