# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# puts 'Cleaning database...'

Category.destroy_all

puts "Creating products"

Category.create(name: "Birthdays")
Category.create(name: "Weddings")
Category.create(name: "Hens")
Category.create(name: "Mother's Day")
Category.create(name: "Halloween")
Category.create(name: "Christmas")
Category.create(name: "St Patrick's Day")
Category.create(name: "Pride")
Category.create(name: "Easter")
Category.create(name: "Valentines")

puts "Finished!"

# require "open-uri"

# file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
# category = Category.new(name: 'Test')
# category.photo.attach(io: file, filename: 'minnie.jpg', content_type: 'image/jpg')
# category.save
# puts "image saved"

