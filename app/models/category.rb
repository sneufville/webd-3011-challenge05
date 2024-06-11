class Category < ApplicationRecord
  # Category relationships
  # Category belongs to many products
  has_many :product
end
