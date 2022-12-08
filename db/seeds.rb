require "open-uri"
require "nokogiri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning data base"
ProduceRecipe.destroy_all
Recipe.destroy_all
Produce.destroy_all


puts "Creating produce"

produce1 = Produce.new(
  name: "apples",
  description: "The arrival of the apple crop as summer gives way to autumn stirs a nostalgia for the traditions of harvest: cider-making, preserving, baking apple pies and crumbles, and getting ready for winter by hoarding and storing. Traditions that were established and evolved by generations of Britain's farmers, gardeners and cooks."
)
produce1.save

produce2 = Produce.new(
  name: "cranberries",
  description: "Fresh cranberries are available from November to December."
)
produce2.save

produce3 = Produce.new(
  name: "pears",
  description: "Pears are a powerhouse fruit, packing fiber, vitamins, and beneficial plant compounds. These nutrients are thought to fight inflammation, promote gut and heart health, protect against certain diseases, and even aid weight loss."
)
produce3.save

produce4 = Produce.new(
  name: "beetroot",
  description: "Beetroot is the taproot part of the beetroot plant. The whole plant is edible although the leaves and stems are best enjoyed when the plants are young."
)
produce4.save

produce5 = Produce.new(
  name: "carrots",
  description: "Carrots are a source of fibre as well as vitamin C, which contribute to their heart protective properties."
)
produce5.save


Produce.all.each do |produce|
  recipes_array = []
  html = URI.open("https://www.allrecipes.com/search?q=#{produce.name}").read

  # 1. Parse HTML
  doc = Nokogiri::HTML(html, nil, "utf-8")

  # 2. Search the Nokogiri document by identifying the cards
  produce_recipe = doc.search(".mntl-card-list-items.card")
  produce_recipe[0..10].each do |element|

    # 3 Go through actual recipes and not blog articles - recipes are the cards with a rating
    unless element.search(".recipe-card-meta__rating-count-number").empty?
      # 4. Create recipe and store it in results
      name = element.search(".card__title-text").text.strip
      img = element.search(".card__img")[1].attributes["src"].value
      p img
      details_url = element.attribute("href").value
      details_doc = Nokogiri::HTML(URI.open(details_url).read, nil, "utf-8")
      description = details_doc.search("#article-subheading_2-0").text.strip

      # 6. Create a recipe instance and append it to our results array.
      recipes_array << Recipe.create!(name: name, description: description, url: details_url, img: img)
    end
  end
  # 7. Select the first 5 recipes at the end when we're sure we have built recipes instances (no articles)

  recipes_array.uniq.each { |rec| ProduceRecipe.create(produce: produce, recipe: rec) }
end

puts "Finished"
