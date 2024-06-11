require 'faker'
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

(1..676).each do
  # create a product
  product_name = Faker::Commerce.product_name
  product_price = Faker::Commerce.price
  stock_quantity = Faker::Number.number(digits: 3)
  # attempt to create or raise exception on failure
  Product.create!(
    title: product_name,
    price: product_price,
    stock_quantity: stock_quantity
  )
end
