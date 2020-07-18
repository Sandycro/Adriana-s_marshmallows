class Category < ApplicationRecord
  validates :name, presence: true
  has_one :picture, dependent: :destroy
end
