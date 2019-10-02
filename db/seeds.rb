# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'
puts "create ingredients"
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
list = JSON.parse(open(url).read)
10.times do
  index = rand(0..99)
  Ingredient.create(name: list["drinks"][index]["strIngredient1"])
end
puts "end"
