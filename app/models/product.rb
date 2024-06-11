class Product < ApplicationRecord
  # product relationships
  # Product belongs to a specific category
  belongs_to :category

  # validations - required
  validates :title, :price, :stock_quantity, presence: true
end
