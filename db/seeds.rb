require 'csv'
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# clear existing data
Product.destroy_all
Category.destroy_all

# load content of CSV
csv_file = Rails.root.join('db/products.csv')
csv_data = File.read(csv_file)

products = CSV.parse(csv_data, headers: true)

products.each do |product|

  # retrieve or create the category
  category = Category.find_or_create_by(name: product['category'])

  # create the product using category object and other data from the CSV
  Product.create!(
    title: product['name'],
    description: product['description'],
    price: product['price'],
    stock_quantity: product['stock quantity'],
    category: category
  )
end
