# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

require "open-uri"

file = URI.open('https://images.freeimages.com/images/large-previews/84e/pineapple-drink-1571469.jpg')
cocktailse = Cocktail.new(name: 'Laughing Buddha 2')
cocktailse.photo.attach(io: file, filename: 'lbcocktail.jpg', content_type: 'image/jpg')
cocktailse.save
