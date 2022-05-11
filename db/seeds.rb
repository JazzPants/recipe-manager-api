# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'iloveramen33', password: 'hello123')
User.create(name: 'ilovepizza22', password: 'hello123')
User.create(name: 'ilovepasta11', password: 'hello123')
Restaurant.create!(
  user_id: 1,
  name: 'Kosuke',
  description:
    'Kosuke is a dedicated ramen joint with an extensive list of ramens
you can choose to devour. From rich, thick, tonkotsu black garlic,
to more light, but still savoury shio ramen, there is a choice for
everyone!',
  category: 'Ramen',
  location: 'Sydney',
  pricing: 'average',
  image:
    'https://cdn.cafeata.com/photos/photo_0x6b12a5a93f0bbe85_0x3e0c6206b2661e00_1625287217108523.jpg',
)

Restaurant.create!(
  user_id: 1,
  name: 'Ramen Zundo',
  description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna ex, porttitor vel libero vitae, elementum condimentum elit. Nam quis nisi fringilla, posuere purus nec, ultrices ante. Phasellus consequat sapien a erat tempor, scelerisque tempor odio ultrices. Etiam at ipsum dapibus, blandit ipsum sit amet, euismod elit. Curabitur posuere rhoncus.',
  category: 'Ramen',
  location: 'Sydney',
  pricing: 'low',
  image:
    'https://b.zmtcdn.com/data/pictures/8/16565638/c429aa53df8f33c7ab43eb04512d85db.jpg?fit=around|750:500&crop=750:500;*,*',
)
Restaurant.create!(
  user_id: 1,
  name: 'RaRa Ramen',
  description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna ex, porttitor vel libero vitae, elementum condimentum elit. Nam quis nisi fringilla, posuere purus nec, ultrices ante. Phasellus consequat sapien a erat tempor, scelerisque tempor odio ultrices. Etiam at ipsum dapibus, blandit ipsum sit amet, euismod elit. Curabitur posuere rhoncus.',
  category: 'Ramen',
  location: 'Sydney',
  pricing: 'high',
  image:
    'https://cdn.broadsheet.com.au/cache/97/f2/97f243568a99f4e73f291f55f16617e7.jpg',
)
Restaurant.create!(
  user_id: 1,
  name: 'Ippudo',
  description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna ex, porttitor vel libero vitae, elementum condimentum elit. Nam quis nisi fringilla, posuere purus nec, ultrices ante. Phasellus consequat sapien a erat tempor, scelerisque tempor odio ultrices. Etiam at ipsum dapibus, blandit ipsum sit amet, euismod elit. Curabitur posuere rhoncus.',
  category: 'Ramen',
  location: 'Sydney',
  pricing: 'high',
  image: 'http://www.ippudo.com.au/images/interior-557w.jpg',
)
Restaurant.create!(
  user_id: 1,
  name: "Mary's Newtown",
  description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna ex, porttitor vel libero vitae, elementum condimentum elit. Nam quis nisi fringilla, posuere purus nec, ultrices ante. Phasellus consequat sapien a erat tempor, scelerisque tempor odio ultrices. Etiam at ipsum dapibus, blandit ipsum sit amet, euismod elit. Curabitur posuere rhoncus.',
  category: 'Burgers',
  location: 'Sydney',
  pricing: 'high',
  image:
    'https://cdn.broadsheet.com.au/melbourne/images/2019/09/17/124055-3320-121924-1215-marysnewtown_nbeyrouti-29_2FTTZ3B.jpg',
)
Restaurant.create!(
  user_id: 1,
  name: 'Charcoal Fish',
  description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna ex, porttitor vel libero vitae, elementum condimentum elit. Nam quis nisi fringilla, posuere purus nec, ultrices ante. Phasellus consequat sapien a erat tempor, scelerisque tempor odio ultrices. Etiam at ipsum dapibus, blandit ipsum sit amet, euismod elit. Curabitur posuere rhoncus.',
  category: 'Burgers',
  location: 'Sydney',
  pricing: 'high',
  image:
    'https://cdn.concreteplayground.com/content/uploads/2021/09/charcoal-fish-supplied-1-1920x1080.jpg',
)
Restaurant.create!(
  user_id: 1,
  name: "Castello's Pizza",
  description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna ex, porttitor vel libero vitae, elementum condimentum elit. Nam quis nisi fringilla, posuere purus nec, ultrices ante. Phasellus consequat sapien a erat tempor, scelerisque tempor odio ultrices. Etiam at ipsum dapibus, blandit ipsum sit amet, euismod elit. Curabitur posuere rhoncus.',
  category: 'Pizza',
  location: 'Sydney',
  pricing: 'high',
  image:
    'https://scontent.fsyd11-1.fna.fbcdn.net/v/t1.6435-9/150207229_114489190627565_2242664805825422851_n.jpg?_nc_cat=110&ccb=1-6&_nc_sid=730e14&_nc_ohc=Jp_-esVLY0kAX-Ewxuj&_nc_ht=scontent.fsyd11-1.fna&oh=00_AT_2aCjVb0o9Y7njq86Vs-k83p4-XAIL1rQQ08qJvAB1dQ&oe=62A13284',
)
Restaurant.create!(
  user_id: 1,
  name: 'Macchiato',
  description:
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna ex, porttitor vel libero vitae, elementum condimentum elit. Nam quis nisi fringilla, posuere purus nec, ultrices ante. Phasellus consequat sapien a erat tempor, scelerisque tempor odio ultrices. Etiam at ipsum dapibus, blandit ipsum sit amet, euismod elit. Curabitur posuere rhoncus.',
  category: 'Pizza',
  location: 'Sydney',
  pricing: 'high',
  image:
    'https://www.bestrestaurants.com.au/media/km0hqzvo/jpeg-image.jpg?width=1200&rnd=132862935838170000',
)

Review.create!(
  content:
    'Vel fuga odio qui nemo commodi aut magnam quos qui provident perspiciatis. Et sint temporibus eos voluptatem praesentium qui officia voluptate quo reprehenderit eveniet est dolorem unde ut molestias Quis. Et aperiam architecto in neque esse hic accusantium atque.

Aut quasi commodi ut excepturi soluta ut porro asperiores et nostrum quidem et dolorem veniam! Et ullam voluptate qui eaque quae aut aliquid sequi ut alias veritatis.',
  user_id: 1,
  restaurant_id: 1,
)

Review.create!(
  content:
    'Odit ullam est architecto nihil in ullam neque eos accusantium vero. Ut recusandae esse sit dolores numquam est dolores accusantium rem ullam animi ut velit dolore sit quisquam totam qui quia assumenda. Ea enim reiciendis sed aspernatur iure et consequatur minima.',
  user_id: 2,
  restaurant_id: 1,
)

Review.create!(
  content:
    'Est numquam laborum et alias autem et laboriosam dignissimos. Hic facilis cumque et perferendis libero est laborum amet. Rem exercitationem velit ut ipsum consectetur et aspernatur ut nulla minima.',
  user_id: 3,
  restaurant_id: 1,
)

Rating.create(value: 5, user_id: 1, restaurant_id: 1)

Rating.create(value: 5, user_id: 2, restaurant_id: 1)

Rating.create(value: 4, user_id: 3, restaurant_id: 1)
