class Review < ApplicationRecord
  validates :content, :rating, presence: true
  belongs_to :restaurant
  validates :rating, numericality: { only_integer: true, in: (0..5)}
end
