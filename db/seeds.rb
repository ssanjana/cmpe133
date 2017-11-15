# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# The .delete_all method sets up a clean slate for seed data
# Delete all the carts to remove from all shopping carts.
Cart.delete_all
Category.delete_all

Category.create(id: 1, name:'Meats',
  image_url: 'meats/meats.jpg')
Category.create(id: 2,name:'Beverages',
  image_url: 'beverages/beverages.JPG')
Category.create(id: 3,name:'Breads',
  image_url: 'bread/bread2.jpg')
Category.create(id: 4,name:'Breakfast',
  image_url: 'breakfast/breakfast.JPG')
Category.create(id: 5,name:'Condiments',
  image_url: 'condiments/condiments.JPG')
Category.create(id: 6,name:'Fruits',
  image_url: 'fruits/fruits.JPG')
Category.create(id: 7,name:'Dairy',
  image_url: 'milk-dairy/milk-dairy.JPG')
Category.create(id: 8,name:'Snacks',
  image_url: 'snacks/snacks.JPG')
Category.create(id: 9,name:'Vegetables',
  image_url: 'vegetables/vegetables.JPG')


Product.delete_all
#Product creation!
Product.create(title:'Beef Franks',
  category_id:1,
  description: %{Just classier hot dogs.},
  image_url: 'meats/beeffranks.jpeg',
  price: 9.99)
Product.create(title:'King Salmon Fillet',
  category_id:1,
  description: %{A big hunk of salmon meat prepared by our deli!},
  image_url: 'meats/king-salmon-fillet.jpg',
  price: 12.00)
Product.create(title:'Lunch Meat',
  category_id:1,
  description: %{Ready to put in your sandwiches},
  image_url: 'meats/lunchmeat.jpg',
  price: 12.00)

Product.create(title:'Blue Bottle coffee',
  category_id:2,
  description: %{Coffee is made of three simple ingredients: coffee, water, and time.},
  image_url: 'beverages/blurbottle.jpg',
  price: 3.99)
Product.create(title:'Bai Variety Pack',
  category_id:2,
  description: %{Delicious fruit-inspired beverages available in 4 tropical flavors.},
  image_url: 'beverages/bai.jpg',
  price: 19.98)
Product.create(title:'Mango Nectar',
  category_id:2,
  description: %{The BEST mango juice around. Straight from Costco},
  image_url: 'beverages/mango-nectar.jpg',
  price: 7.99)
Product.create(title:'Naked Juice',
  category_id:2,
  description: %{Get Naked in packs! This juice has wonderful nutrients},
  image_url: 'beverages/nakedjuice.jpg',
  price: 12.00)
Product.create(title:'Sprite',
  category_id:2,
  description: %{Get this soda that is fueling the economy keeping the sugar industry alive.},
  image_url: 'beverages/sprite.jpg',
  price: 12.99)
Product.create(title:'IZZE Sparkling Juice',
  category_id:2,
  description: %{IZZE Sparkling Juices are 70% pure fruit juice with a splash of sparkling water.},
  image_url: 'beverages/izze.jpg',
  price: 12.99)

Product.create(title:'Whole Wheat Bread',
  category_id:3,
  description: %{This bread keeps you normal af},
  image_url: 'bread/costcowholewheat.jpg',
  price: 5.99)
Product.create(title:'Wonder Bread',
  category_id:3,
  description: %{The most wonderful bread of the year.},
  image_url: 'bread/wonderbread.png',
  price: 1.99)
Product.create(title:'Mini French Bread',
  category_id:3,
  description:
    %{This is like a good bread to use to make banh mi so go ahead, try it.
      Look up a video on YouTube to make a bomb-ass sandwich. We'll wait.},
  image_url: 'bread/bread2.jpg',
  price: 18.00)

Product.create(title:'Cereal in a Bowl',
  category_id:4,
  description:
    %{
      Frosted Flakes (supposedly) in a very aesthetic bowl which is hopefully
      clean to be eating out of. A little bit of cereal was carelessly spilled,
      but I think the table is clean too.
      },
  image_url: 'breakfast/breakfast.JPG',
  price: 7.95)
Product.create(title:'Frosted Flakes',
  category_id:4,
  description: %{General Mills or something},
  image_url: 'breakfast/frosted-flakes.jpg',
  price: 2.98)
Product.create(title:'Honey Nut Cheerios',
  category_id:4,
  description: %{Lower your cholestrol or something!},
  image_url: 'breakfast/honey-nut-cheerios.jpg',
  price: 2.98)
Product.create(title:'Reeses Puff',
  category_id:4,
  description: %{Peanut butter chocolate flavor},
  image_url: 'breakfast/reesespuffs.jpg',
  price: 2.98)

Product.create(title:'Heinz Ketchup',
  category_id:5,
  description: %{Ketchup to use on all your favorite products!},
  image_url: 'condiments/heinz.jpg',
  price: 2.00)
Product.create(title:'Heinz Mustard',
  category_id:5,
  description: %{Mustard to use on all your food, seriously!},
  image_url: 'condiments/mustard.jpeg',
  price: 2.00)
Product.create(title:'Sriacha',
  category_id:5,
  description: %{For those who want some heat in their life.},
  image_url: 'condiments/sriacha.jpg',
  price: 4.00)
Product.create(title:'California Extra Virgin Olive Oil',
  category_id:5,
  description: %{This delicate olive oil has a fruity nose and a smooth and buttery tongue with a very slight peppery finish. Perfect for baking cakes and cookies, for all-purpose mayonnaise and mashed potatoes or with tender salad greens, just to name a few of the many options. Made in the USA.},
  image_url: 'condiments/oliveoil.jpg',
  price: 15.00)

Product.create(title:'Misc Fruit',
  category_id:6,
  description: %{it's fruit yo},
  image_url: 'fruits/fruits.JPG',
  price: 9.95)
Product.create(title:'Apple',
  category_id:6,
  description: %{An Apple a day keeps the doctor at bay},
  image_url: 'fruits/apple.jpg',
  price: 0.99)
Product.create(title:'Pear',
  category_id:6,
  description: %{Apple's chill cousin},
  image_url: 'fruits/pear.jpg',
  price: 0.99)
Product.create(title:'Dragon Fruit',
  category_id:6,
  description: %{Have some Asian kiwi in your life.},
  image_url: 'fruits/dragon.jpg',
  price: 0.99)

Product.create(title:'Lactaid',
  category_id:7,
  description: %{Milk without the hassle!},
  image_url: 'milk-dairy/lactaid.jpg',
  price: 5.00)
Product.create(title:'Philadelphia',
  category_id:7,
  description: %{Cream Cheese!},
  image_url: 'milk-dairy/philadelphia.jpg',
  price: 9.00)

Product.create(title:'Cheddar Ruffles',
  category_id:8,
  description: %{The BEST Ruffles imo.},
  image_url: 'snacks/cheddar-ruffles.jpg',
  price: 1.98)
Product.create(title:'Pringles',
  category_id:8,
  description: %{Chips in a tube!},
  image_url: 'snacks/pringles.jpg',
  price: 1.98)
Product.create(title:'Sour Cream and Onion Lays',
  category_id:8,
  description: %{The 1st Best flavor dude},
  image_url: 'snacks/sour-cream-and-onion-lays.jpg',
  price: 1.98)

Product.create(title:'Carrots',
  category_id:9,
  description: %{Good for your eyes (;},
  image_url: 'vegetables/carrots.jpg',
  price: 0.40)
Product.create(title:'Cucumbers',
  category_id:9,
  description: %{Almost Pickle Rick},
  image_url: 'vegetables/cucumbers.jpg',
  price: 0.10)
Product.create(title:'Zucchini',
  category_id:9,
  description: %{Idk what this is},
  image_url: 'vegetables/zucchini.jpg',
  price: 4.00)
