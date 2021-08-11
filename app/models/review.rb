class Review < ApplicationRecord
  belongs_to :list

  validates :comment, presence: true
  RATINGS = [0, 1, 2, 3, 4, 5].freeze
  validates :rating, presence: true, inclusion: { in: RATINGS }, numericality: true
end
