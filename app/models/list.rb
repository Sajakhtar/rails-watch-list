class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_many :reviews
  has_one_attached :image
  validates :name, presence: true, uniqueness: true
end
