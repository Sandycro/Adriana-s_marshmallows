class Category < ApplicationRecord
  validates :name, presence: true
  has_many :products
  has_one :picture, dependent: :destroy
end
