# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

Cocktail.create(name: "lemon sky")
Cocktail.create(name: "ice mind")
Cocktail.create(name: "mint leaves power")

Dose.create(cocktail_id: 1, ingredient_id: 1, description: "great mix of fresh lemondeb")
