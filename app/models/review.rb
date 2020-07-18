class Review < ApplicationRecord
  belongs_to :product
  validates :content, presence: true, length: {minimum: 20}
end
