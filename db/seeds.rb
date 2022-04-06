# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "iloveramen33")
Restaurant.create!(user_id: 1,name: "Kosuke",description: "Kosuke is a dedicated ramen joint with an extensive list of ramens
you can choose to devour. From rich, thick, tonkotsu black garlic,
to more light, but still savoury shio ramen, there is a choice for
everyone!",category: "Ramen",location: "Sydney",pricing: "average")