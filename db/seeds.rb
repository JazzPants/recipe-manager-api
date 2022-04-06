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

Restaurant.create!(user_id: 1,    name: "Ramen Zundo",
description:
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna ex, porttitor vel libero vitae, elementum condimentum elit. Nam quis nisi fringilla, posuere purus nec, ultrices ante. Phasellus consequat sapien a erat tempor, scelerisque tempor odio ultrices. Etiam at ipsum dapibus, blandit ipsum sit amet, euismod elit. Curabitur posuere rhoncus.",
category: "Ramen",
location: "Sydney",
pricing: "low")
Restaurant.create!(user_id: 1,    name: "RaRa Ramen",
description:
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna ex, porttitor vel libero vitae, elementum condimentum elit. Nam quis nisi fringilla, posuere purus nec, ultrices ante. Phasellus consequat sapien a erat tempor, scelerisque tempor odio ultrices. Etiam at ipsum dapibus, blandit ipsum sit amet, euismod elit. Curabitur posuere rhoncus.",
rating: 4,
category: "Ramen",
location: "Sydney",
pricing: "high")
Restaurant.create!(user_id: 1,    name: "Ippudo",
description:
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna ex, porttitor vel libero vitae, elementum condimentum elit. Nam quis nisi fringilla, posuere purus nec, ultrices ante. Phasellus consequat sapien a erat tempor, scelerisque tempor odio ultrices. Etiam at ipsum dapibus, blandit ipsum sit amet, euismod elit. Curabitur posuere rhoncus.",
rating: 4,
category: "Ramen",
location: "Sydney",
pricing: "high")
Restaurant.create!(user_id: 1,    name: "Mary's Newtown",
description:
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna ex, porttitor vel libero vitae, elementum condimentum elit. Nam quis nisi fringilla, posuere purus nec, ultrices ante. Phasellus consequat sapien a erat tempor, scelerisque tempor odio ultrices. Etiam at ipsum dapibus, blandit ipsum sit amet, euismod elit. Curabitur posuere rhoncus.",
rating: 4,
category: "Burgers",
location: "Sydney",
pricing: "high")
Restaurant.create!(user_id: 1,    name: "Charcoal Fish",
description:
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna ex, porttitor vel libero vitae, elementum condimentum elit. Nam quis nisi fringilla, posuere purus nec, ultrices ante. Phasellus consequat sapien a erat tempor, scelerisque tempor odio ultrices. Etiam at ipsum dapibus, blandit ipsum sit amet, euismod elit. Curabitur posuere rhoncus.",
rating: 5,
category: "Burgers",
location: "Sydney",
pricing: "high")
Restaurant.create!(user_id: 1,    name: "Castello's Pizza",
description:
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna ex, porttitor vel libero vitae, elementum condimentum elit. Nam quis nisi fringilla, posuere purus nec, ultrices ante. Phasellus consequat sapien a erat tempor, scelerisque tempor odio ultrices. Etiam at ipsum dapibus, blandit ipsum sit amet, euismod elit. Curabitur posuere rhoncus.",
rating: 5,
category: "Pizza",
location: "Sydney",
pricing: "high")
Restaurant.create!(user_id: 1,    name: "Macchiato",
description:
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna ex, porttitor vel libero vitae, elementum condimentum elit. Nam quis nisi fringilla, posuere purus nec, ultrices ante. Phasellus consequat sapien a erat tempor, scelerisque tempor odio ultrices. Etiam at ipsum dapibus, blandit ipsum sit amet, euismod elit. Curabitur posuere rhoncus.",
rating: 4,
category: "Pizza",
location: "Sydney",
pricing: "high")