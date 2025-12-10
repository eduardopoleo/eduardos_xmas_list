# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require 'json'

# Load items from JSON file
items_file = Rails.root.join('lib', 'items.json')
items_data = JSON.parse(File.read(items_file))

# Clear existing items (optional - remove if you want to keep existing data)
Item.destroy_all

# Create items from JSON data
items_data.each do |item_data|
  Item.create!(
    title: item_data['title'],
    link: item_data['link'],
    image: item_data['image'],
    description: item_data['description'],
    price: item_data['price'],
    claimed: false
  )
end

puts "Created #{Item.count} items"
