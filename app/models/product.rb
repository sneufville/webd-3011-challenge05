class Product < ApplicationRecord
  # validations - required
  validates :title, :price, :stock_quantity, presence: true
end
