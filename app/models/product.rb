class Product < ApplicationRecord
  belongs_to :category
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :rating, inclusion: {in: [1, 2, 3, 4, 5], allow_nil: false}
  has_many_attached :photos
end
