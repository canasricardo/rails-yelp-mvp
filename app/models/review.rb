class Review < ApplicationRecord
  belongs_to :restaurant

  RATING = %w[1 2 3 4 5]

  validates :content, presence: true
  validates :rating, presence: true

end
