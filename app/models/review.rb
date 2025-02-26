class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, numericality: { only_integer: true}, inclusion: 0..5
  validates :content, presence: true
  validates :restaurant, presence: true
end
