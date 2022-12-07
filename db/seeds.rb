# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning data base"

Produce.destroy_all

puts "Creating produce"

produce = Produce.new(
  name: "apples",
  description: "The arrival of the apple crop as summer gives way to autumn stirs a nostalgia for the traditions of harvest: cider-making, preserving, baking apple pies and crumbles, and getting ready for winter by hoarding and storing. Traditions that were established and evolved by generations of Britain's farmers, gardeners and cooks."
)
produce.save

produce = Produce.new(
  name: "cranberries",
  description: "Fresh cranberries are available from November to December."
)
produce.save

produce = Produce.new(
  name: "pears",
  description: "Pears are a powerhouse fruit, packing fiber, vitamins, and beneficial plant compounds. These nutrients are thought to fight inflammation, promote gut and heart health, protect against certain diseases, and even aid weight loss."
)
produce.save

produce = Produce.new(
  name: "beetroot",
  description: "Beetroot is the taproot part of the beetroot plant. The whole plant is edible although the leaves and stems are best enjoyed when the plants are young."
)
produce.save

produce = Produce.new(
  name: "carrots",
  description: "Carrots are a source of fibre as well as vitamin C, which contribute to their heart protective properties."
)
produce.save

puts "Finished"
