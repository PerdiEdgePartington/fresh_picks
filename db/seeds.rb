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
ProduceSeason.destroy_all
Produce.destroy_all


puts "Creating produce"

apple_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670835488/photo-1569870499705-504209102861_zc9uc5.jpg")

produce = Produce.new(
  name: "Apples",
  description: "The arrival of the apple crop as summer gives way to autumn stirs a nostalgia for the traditions of harvest: cider-making, preserving, baking apple pies and crumbles, and getting ready for winter by hoarding and storing. Traditions that were established and evolved by generations of Britain's farmers, gardeners and cooks.",
  nutrition_calories: "95 calories",
  nutrition_fat: "0g of fat",
  nutrition_protein: "1g of protein",
  nutrition_carbs: "25g carbohydrate",
  nutrition_sugar: "19g sugar (naturally occurring)",
  nutrition_fiber: "3g fiber"
)
produce.photo.attach(io: apple_file, filename: "nes.png", content_type: "image/png")
produce.save

cranberry_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670840736/Simply-Recipes-Guide-to-Cranberries-LEAD-3-38eee9528d564e7cba2209c288dfe871_ufkqr9.jpg")

produce = Produce.new(
  name: "Cranberries",
  description: "Many people consider cranberries to be a superfood due to their high nutrient and antioxidant content.",
  nutrition_calories: "46 calories",
  nutrition_fat: "0g fat",
  nutrition_protein: "1g of protein",
  nutrition_carbs: "12g carbohydrate",
  nutrition_sugar: "4g of sugar (naturally occurring)",
  nutrition_fiber: "4g of fiber"
)
produce.photo.attach(io: cranberry_file, filename: "nes.png", content_type: "image/png")
produce.save

pear_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670840970/Pears_mkl7la.jpg")
produce = Produce.new(
  name: "Pears",
  description: "Pears are a powerhouse fruit, packing fiber, vitamins, and beneficial plant compounds. These nutrients are thought to fight inflammation, promote gut and heart health, protect against certain diseases, and even aid weight loss.",
  nutrition_calories: "101 calories",
  nutrition_fat: "0.285g of fat",
  nutrition_protein: "1g of protein",
  nutrition_carbs: "26.9g of carbohydrate",
  nutrition_sugar: "17.2g of sugar (naturally occurring)",
  nutrition_fiber: "5.52g fiber"

)
produce.photo.attach(io: pear_file, filename: "nes.png", content_type: "image/png")
produce.save

beetroot_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670841098/640px-Detroitdarkredbeets_azo1ao.png")

produce = Produce.new(
  name: "Beetroot",
  description: "Beetroot is the taproot part of the beetroot plant. The whole plant is edible although the leaves and stems are best enjoyed when the plants are young.",
  nutrition_calories: "43 calories",
  nutrition_fat: "0.2g of fat",
  nutrition_protein: "1.6g protein",
  nutrition_carbs: "9.6g of carbohydrate",
  nutrition_fiber: "2.8g fiber"
)
produce.photo.attach(io: beetroot_file, filename: "nes.png", content_type: "image/png")
produce.save

carrot_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670841152/carrots-benefits-pin_duwona.jpg")

produce = Produce.new(
  name: "Carrots",
  description: "Carrots are a source of fibre as well as vitamin C, which contribute to their heart protective properties.",
  nutrition_calories: "41 calories",
  nutrition_fat: "0.2g of fat",
  nutrition_protein: "0.9g of protein",
  nutrition_carbs: "9.6g of carbohydrate",
  nutrition_fiber: "2.8g fiber"
)
produce.photo.attach(io: carrot_file, filename: "nes.png", content_type: "image/png")
produce.save

orange_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670841198/iStock-1131608539or_ubyh3j.jpg")

produce = Produce.new(
  name: "Oranges",
  description: "In addition to vitamin C and folate, oranges provide smaller amounts of other nutrients, including calcium, potassium, and thiamine (vitamin B1). Oranges are a good source of fiber and a rich source of vitamin C and folate, among many other beneficial nutrients.",
  nutrition_calories: "60 calories",
  nutrition_protein: "1g of protein",
  nutrition_carbs: "9.6g of carbohydrate",
  nutrition_sugar: "12g of sugar (naturally occurring)",
  nutrition_fiber: "3g fiber"
)
produce.photo.attach(io: orange_file, filename: "nes.png", content_type: "image/png")
produce.save

strawberry_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670841256/ripe-red-strawberries_r3f8ir.jpg")

produce = Produce.new(
  name: "Strawberries",
  description: "Strawberries are bright red, juicy, and sweet. They're an excellent source of vitamin C and manganese and also contain decent amounts of folate (vitamin B9) and potassium. Strawberries are very rich in antioxidants and plant compounds, which may have benefits for heart health and blood sugar control",
  nutrition_calories: "33 calories per 100g",
  nutrition_fat: "0.3g of fat per 100g",
  nutrition_protein: "0.67g of protein per 100g",
  nutrition_carbs: "7.68g of carbohydrate per 100g",
  nutrition_sugar: "12g of sugar (naturally occurring)",
  nutrition_fiber: "2g fiber per 100g"
)
produce.photo.attach(io: strawberry_file, filename: "nes.png", content_type: "image/png")
produce.save

raspberry_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670841305/Heritage_Raspberry_1_FGT_7ba419f7-b2fe-46ca-b825-4f96987dab79_650x_ruva80.jpg")

produce = Produce.new(
  name: "Raspberries",
  description: "Raspberries are an excellent source of vitamin C, manganese, and fiber. They are also full of anthocyanins, pigments that provide antioxidant properties and have been found to have beneficial effects on cardiovascular health. Raspberries are low in calories and sodium and are fat-free.",
  nutrition_calories: "53 calories per 100g",
  nutrition_fat: "0.2g of fat per 100g",
  nutrition_protein: "0.7g of protein per 100g",
  nutrition_carbs: "12g of carbohydrate per 100g",
  nutrition_sugar: "4.6g of sugar (naturally occurring)",
  nutrition_fiber: "2.5g fiber per 100g"
)
produce.photo.attach(io: raspberry_file, filename: "nes.png", content_type: "image/png")
produce.save

redcurrant_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670841373/redcurrants-125g-1500x1500-c5aecf8c1511f58b8058877493ecebe2_pmw96e.jpg")

produce = Produce.new(
  name: "Redcurrant",
  description: "Like many fruits with red pigment, red currants contain an antioxidant carotenoid known as lycopene. Lycopene reduces the risk of heart disease and cancer, especially prostate cancer. In addition, it protects the body from free radical stress that can damage DNA and other cell structures.",
  nutrition_calories: "56 calories per 100g",
  nutrition_fat: "0.7g of fat",
  nutrition_protein: "1.5g of protein per 100g",
  nutrition_carbs: "14g of carbohydrate per 100g",
  nutrition_sugar: "7.06g of sugar (naturally occurring)",
  nutrition_fiber: "3g fiber per 100g"
)
produce.photo.attach(io: redcurrant_file, filename: "nes.png", content_type: "image/png")
produce.save

blueberry_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670841413/how-to-store-blueberries-2000-00cda4a2eda74037af3aaf6224cb1912_lyissd.jpg")

produce = Produce.new(
  name: "Blueberries",
  description: "Packed with antioxidants and phytoflavinoids, these berries are also high in potassium and vitamin C, making them the top choice of doctors and nutritionists. Not only can they lower your risk of heart disease and cancer, they are also anti-inflammatory.",
  nutrition_calories: "57 calories per 100g",
  nutrition_fat: "0.5g of fat per 100g",
  nutrition_protein: "0.7g of protein per 100g",
  nutrition_carbs: "9.1g of carbohydrate per 100g",
  nutrition_sugar: "9.1g of sugar (naturally occurring)",
  nutrition_fiber: "1.5g fiber per 100g"
)
produce.photo.attach(io: blueberry_file, filename: "nes.png", content_type: "image/png")
produce.save

gooseberry_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670841491/gooseberries-800_pmmdgr.jpg")

produce = Produce.new(
  name: "Gooseberries",
  description: "Gooseberries are tart berries commonly used in fruit desserts or served in cooked sauces for rich meat like roast duck. They are low in calories, fat- and cholesterol-free and a good source of essential nutrients including vitamin C, vitamin A, manganese and dietary fiber.",
  nutrition_calories: "44 calories per 100g",
  nutrition_fat: "0.2g of fat per 100g",
  nutrition_protein: "1.3g of protein per 100g",
  nutrition_carbs: "11g of carbohydrate",
  nutrition_sugar: "4.6g of sugar (naturally occurring)",
  nutrition_fiber: "3g fiber per 100g"
)
produce.photo.attach(io: gooseberry_file, filename: "nes.png", content_type: "image/png")
produce.save

cherry_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670841544/ars-bing-cherries-blog-051220_tcjb2z.jpg")

produce = Produce.new(
  name: "Cherries",
  description: "Cherries are low in calories and chock full of fiber, vitamins, minerals, nutrients, and other good-for-you ingredients. You'll get vitamins C, A, and K. Each long-stemmed fruit delivers potassium, magnesium, and calcium too. They also bring antioxidants, like beta-carotene, and the essential nutrient choline.",
  nutrition_calories: "63 calories per 100g",
  nutrition_protein: "1.06g of protein per 100g",
  nutrition_carbs: "16g of carbohydrate",
  nutrition_sugar: "8g of sugar (naturally occurring)",
  nutrition_fiber: "2.1g fiber per 100g"
)
produce.photo.attach(io: cherry_file, filename: "nes.png", content_type: "image/png")
produce.save

blackberry_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670841601/Thornless_Blackberry_3_650x_bvvinu.jpg")

produce = Produce.new(
  name: "Blackberries",
  description: "Blackberries are characterized by their coloring, their unique composition and their flavor. Like raspberries, Blackberries are not technically a berry, but rather an aggregate fruit of individual drupes held together by very fine, nearly invisible hairs. Blackberries do not have a hollow center, instead they have a solid, edible core. When ripe, Blackberries have a deep inky sheen with purple highlights. They are succulent, soft, and juicy. Their flavor is sweet, slightly tart, with earthy undertones.",
  nutrition_calories: "43 calories per 100g",
  nutrition_fat: "0.5g of fat per 100g",
  nutrition_protein: "1.4g of protein per 100g",
  nutrition_carbs: "10g of carbohydrate",
  nutrition_sugar: "4.9g of sugar (naturally occurring)",
  nutrition_fiber: "5.3g fiber"
)
produce.photo.attach(io: blackberry_file, filename: "nes.png", content_type: "image/png")
produce.save

cauliflower_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670841664/cauliflower_commodity-page_uan83y.png")

produce = Produce.new(
  name: "Cauliflower",
  description: "Cauliflower is a cruciferous vegetable that is naturally high in fiber and B-vitamins. It provides antioxidants and phytonutrients that can protect against cancer. It also contains fiber to enhance weight loss and digestion, choline that is essential for learning and memory, and many other important nutrients.",
  nutrition_calories: "25 calories",
  nutrition_fat: "0.3g of fat",
  nutrition_protein: "1.9g of protein",
  nutrition_carbs: "5g of carbohydrate",
  nutrition_sugar: "2g of sugar (naturally occurring)",
  nutrition_fiber: "2g fiber"
)
produce.photo.attach(io: cauliflower_file, filename: "nes.png", content_type: "image/png")
produce.save

lettuce_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670841741/Lettuce_HERO_060320_8897_gnkouo.jpg")

produce = Produce.new(
  name: "Lettuce",
  description: "A good source of fiber, iron, folate, and vitamin C. Lettuce is also a good source of various other health-beneficial bioactive compounds. In vitro and in vivo studies have shown anti-inflammatory, cholesterol-lowering, and anti-diabetic activities attributed to the bioactive compounds in lettuce.",
  nutrition_calories: "15 calories",
  nutrition_protein: "1.4g of protein",
  nutrition_carbs: "2.9g of carbohydrate",
  nutrition_sugar: "0.8g of sugar (naturally occurring)",
  nutrition_fiber: "1.6g fiber"
)
produce.photo.attach(io: lettuce_file, filename: "nes.png", content_type: "image/png")
produce.save

leek_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670841835/Depositphotos_314117214_l-2015-leek-vegetable-sq_dogh8o.jpg")

produce = Produce.new(
  name: "Leeks",
  description: "Leeks are widely known vegetables that have been used in local cuisine for hundreds of years. Their incredible properties make them a preferred ingredient for chefs and anybody trying to stick to a healthy diet. This superfood, in fact, contains high levels of flavonoids, vitamins A, E, and K, and fibers.",
  nutrition_calories: "61 calories",
  nutrition_fat: "0.3g of fat",
  nutrition_protein: "1.5g of protein",
  nutrition_carbs: "14g of carbohydrate",
  nutrition_sugar: "3.9g of sugar (naturally occurring)",
  nutrition_fiber: "1.8g fiber"
)
produce.photo.attach(io: leek_file, filename: "nes.png", content_type: "image/png")
produce.save

onion_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670841933/Basically-Onions-NEW_ne6qwm.jpg")

produce = Produce.new(
  name: "Onions",
  description: "Onions contain antioxidants and compounds that fight inflammation, decrease triglycerides and reduce cholesterol levels — all of which may lower heart disease risk. Their potent anti-inflammatory properties may also help reduce high blood pressure and protect against blood clots.",
  nutrition_calories: "40 calories",
  nutrition_protein: "1.1g of protein",
  nutrition_carbs: "9g of carbohydrate",
  nutrition_sugar: "4.2g of sugar (naturally occurring)",
  nutrition_fiber: "1.7g fiber"
)
produce.photo.attach(io: onion_file, filename: "nes.png", content_type: "image/png")
produce.save

pea_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670842002/GettyImages-1241327204-7e92bb2_uk8qtl.jpg")

produce = Produce.new(
  name: "Peas",
  description: "Peas are a good source of vitamins C and E, zinc, and other antioxidants that strengthen your immune system. Other nutrients, such as vitamins A and B and coumestrol, help reduce inflammation and lower your risk of chronic conditions, including diabetes, heart disease, and arthritis.",
  nutrition_calories: "81 calories",
  nutrition_fat: "0.4g of fat",
  nutrition_protein: "5g of protein",
  nutrition_carbs: "14g of carbohydrate",
  nutrition_sugar: "6g of sugar (naturally occurring)",
  nutrition_fiber: "5g fiber"
)
produce.photo.attach(io: pea_file, filename: "nes.png", content_type: "image/png")
produce.save

radish_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670842095/radish-shutterstock_1010435131_cpcpp6.jpg")

produce = Produce.new(
  name: "Radishes",
  description: "Radishes are rich in antioxidants and minerals like calcium and potassium. Together, these nutrients help lower high blood pressure and reduce your risks for heart disease. The radish is also a good source of natural nitrates that improve blood flow.",
  nutrition_calories: "16 calories",
  nutrition_fat: "0.1g of fat",
  nutrition_protein: "0.7g of protein",
  nutrition_carbs: "3.4g of carbohydrate",
  nutrition_sugar: "1.9g of sugar (naturally occurring)",
  nutrition_fiber: "1.6g fiber"
)
produce.photo.attach(io: radish_file, filename: "nes.png", content_type: "image/png")
produce.save

turnip_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670842156/15024022392_124a3b6cfb_o_xlunc4.jpg")

produce = Produce.new(
  name: "Turnips",
  description: "They boast an impressive nutritional profile, and their bioactive compounds, such as glucosinolates, may support blood sugar control, protect against harmful bacteria, and provide anticancer and anti-inflammatory effects.",
  nutrition_calories: "28 calories",
  nutrition_fat: "0.1g of fat",
  nutrition_protein: "0.9g of protein",
  nutrition_carbs: "6g of carbohydrate",
  nutrition_sugar: "3.8g of sugar (naturally occurring)",
  nutrition_fiber: "1.8g fiber"
)
produce.photo.attach(io: turnip_file, filename: "nes.png", content_type: "image/png")
produce.save

spinach_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670842238/national-spinach-day_c7vubc.jpg")

produce = Produce.new(
  name: "Spinach",
  description: "Spinach is rich in many nutrients, including Vitamin A, Vitamin C, Vitamin K, iron, folate, and potassium. Spinach is chock full of fiber. Eating too much fiber can cause gas, cramping, and abdominal pain. Spinach is rich in oxalate, a naturally occurring substance found in almost all plants.",
  nutrition_calories: "23 calories",
  nutrition_fat: "0.4g of fat",
  nutrition_protein: "2.9g of protein",
  nutrition_carbs: "3.6g of carbohydrate",
  nutrition_sugar: "0.4g of sugar (naturally occurring)",
  nutrition_fiber: "2.2g fiber"
)
produce.photo.attach(io: spinach_file, filename: "nes.png", content_type: "image/png")
produce.save

swisschard_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670842257/recipes-with-swiss-chard_cuvsro.jpg")

produce = Produce.new(
  name: "Swiss chard",
  description: "Chard contains 3 times the recommended daily intake of vitamin K and 44 percent of the recommended amount of vitamin A. This vegetable can help to combat cancer, reduce blood pressure, and enhance performance in sports. Swiss chard can be eaten raw or cooked.",
  nutrition_calories: "19 calories",
  nutrition_fat: "0.2g of fat",
  nutrition_protein: "1.8g of protein",
  nutrition_carbs: "3.7g of carbohydrate",
  nutrition_sugar: "1.1g of sugar (naturally occurring)",
  nutrition_fiber: "1.6g fiber"
)
produce.photo.attach(io: swisschard_file, filename: "nes.png", content_type: "image/png")
produce.save

aubergine_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670842350/Bowl-of-aubergines-5370e43_zrm5ap.jpg")

produce = Produce.new(
  name: "Aubergines",
  description: "Aubergines are a good source of vitamins B1 and B6. Vitamin B1, also called thiamine, helps your body turn food into energy and can also help keep your nervous system healthy. Our bodies can't make vitamin B1 themselves, which means we rely on our diet to get all we need.",
  nutrition_calories: "25 calories",
  nutrition_fat: "0.2g of fat",
  nutrition_protein: "1g of protein",
  nutrition_carbs: "6g of carbohydrate",
  nutrition_sugar: "3.5g of sugar (naturally occurring)",
  nutrition_fiber: "3g fiber"
)
produce.photo.attach(io: aubergine_file, filename: "nes.png", content_type: "image/png")
produce.save

chilli_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670842397/Chilli-linked-to-lower-risk-of-heart-attack-and-stroke-study_ca8qpv.jpg")

produce = Produce.new(
  name: "Chillies",
  description: "Boasting high amounts of vitamin C and antioxidants, chillies have been found to help prevent lifestyle diseases including some cancers and stomach ulcers. Meanwhile, their ability to create heat within the body has also linked the peppers to weight loss as well as lowering the risk of type II diabetes.",
  nutrition_calories: "40 calories",
  nutrition_fat: "0.4g of fat",
  nutrition_protein: "1.9g of protein",
  nutrition_carbs: "9g of carbohydrate",
  nutrition_sugar: "5g of sugar (naturally occurring)",
  nutrition_fiber: "1.5g fiber"
)
produce.photo.attach(io: chilli_file, filename: "nes.png", content_type: "image/png")
produce.save

cucumber_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670842459/AN88-Cucumbers-732x549-thumb-1-732x549_n6btzl.jpg")

produce = Produce.new(
  name: "Cucumbers",
  description: "They are ideal for detoxification and preventing dehydration. Cucumbers are rich in phytonutrients and vitamin K. They are also a very good source of pantothenic acid and Molybdenum. They also contain copper, potassium, manganese, vitamin C, phosphorus, magnesium and vitamin B1.",
  nutrition_calories: "30 calories",
  nutrition_protein: "3g of protein",
  nutrition_carbs: "6g of carbohydrate",
  nutrition_sugar: "1.7g of sugar (naturally occurring)",
  nutrition_fiber: "2g fiber"
)
produce.photo.attach(io: cucumber_file, filename: "nes.png", content_type: "image/png")
produce.save

bellpepper_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670842527/AN284-Red-Bell-Peppers-732x549-thumb_qdhmk0.jpg")

produce = Produce.new(
  name: "Bell Peppers",
  description: "They are an excellent source of vitamin C, especially the ripest peppers, which are red. Peppers are also a good source of vitamin A and fiber. Bell peppers also have antioxidant properties, which may help to protect against diseases such as cardiovascular disease and some cancers.",
  nutrition_calories: "31 calories",
  nutrition_fat: "0.3g of fat",
  nutrition_protein: "1g of protein",
  nutrition_carbs: "6g of carbohydrate",
  nutrition_sugar: "4.2g of sugar (naturally occurring)",
  nutrition_fiber: "2.1g fiber"
)
produce.photo.attach(io: bellpepper_file, filename: "nes.png", content_type: "image/png")
produce.save

pumpkin_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670842594/k_2FPhoto_2FSeries_2F2022-11-punpkin-explainer_2Ftypes_of_pumpkins_055_wuhclg.jpg")

produce = Produce.new(
  name: "Pumpkin",
  description: "What is the health benefits of pumpkin?
Rich in vitamins, minerals and antioxidants, pumpkin is incredibly healthy. What's more, its low calorie content makes it a weight-loss-friendly food. Its nutrients and antioxidants may boost your immune system, protect your eyesight, lower your risk of certain cancers and promote heart and skin health.",
  nutrition_calories: "137 calories",
  nutrition_fat: "7g of fat",
  nutrition_protein: "3g of protein",
  nutrition_carbs: "19g of carbohydrate",
  nutrition_sugar: "4g of sugar (naturally occurring)",
  nutrition_fiber: "7g fiber"
)
produce.photo.attach(io: pumpkin_file, filename: "nes.png", content_type: "image/png")
produce.save

sweetcorn_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670842647/All-you-need-to-know-about-sweet-corn_okrpiv.jpg")

produce = Produce.new(
  name: "Sweetcorn",
  description: "Sweetcorn is rich in folate as well, also known as vitamin B9. This nutrient is essential for the wellbeing of our body, especially during pregnancy. Folate contributes to the creation of healthy red blood cells, and to the baby's development in the womb.",
  nutrition_calories: "86 calories",
  nutrition_fat: "1.2g of fat",
  nutrition_protein: "3.2g of protein",
  nutrition_carbs: "19g of carbohydrate",
  nutrition_sugar: "3.2g of sugar (naturally occurring)",
  nutrition_fiber: "2.7g fiber"
)
produce.photo.attach(io: sweetcorn_file, filename: "nes.png", content_type: "image/png")
produce.save

tomato_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670842683/British-Gardener-Breaks-Guinness-World-Record-Tomatoes-Single-Plant-FT-BLOG0422-1a176dfaaf884f9fa8392687319f6653_cgo0t7.jpg")

produce = Produce.new(
  name: "Tomatoes",
  description: "Tomatoes are the major dietary source of the antioxidant lycopene, which has been linked to many health benefits, including reduced risk of heart disease and cancer. They are also a great source of vitamin C, potassium, folate, and vitamin K.",
  nutrition_calories: "18 calories",
  nutrition_protein: "0.9g of protein",
  nutrition_carbs: "3.9g of carbohydrate",
  nutrition_sugar: "2.6g of sugar (naturally occurring)",
  nutrition_fiber: "1.2g fiber"
)
produce.photo.attach(io: tomato_file, filename: "nes.png", content_type: "image/png")
produce.save

butternutsquash_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670842790/2940_1_yij6vc.jpg")

produce = Produce.new(
  name: "Butternut Squash",
  description: "Butternut squash is rich in important vitamins, minerals, and disease-fighting antioxidants. This low-calorie, fiber-rich winter squash may help you lose weight and protect against conditions like cancer, heart disease, and mental decline. Plus, it's versatile and easily added to both sweet and savory dishes.",
  nutrition_calories: "82 calories",
  nutrition_fat: "0.2g of fat",
  nutrition_protein: "1.8g of protein",
  nutrition_carbs: "21.5g of carbohydrate",
  nutrition_sugar: "4g of sugar (naturally occurring)",
  nutrition_fiber: "6.6g fiber"
)
produce.photo.attach(io: butternutsquash_file, filename: "nes.png", content_type: "image/png")
produce.save

parsley_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670842984/5110_2_bwjdxh.jpg")

produce = Produce.new(
  name: "Parsley",
  description: "Parsley is an excellent source of vitamins A, C, and K, and a good source of folate and iron. Vitamin A is involved in immune function, vision, and reproduction. It also plays an important role in the formation and maintenance of the heart, lungs, kidneys as well as other organs.",
  nutrition_calories: "36 calories",
  nutrition_fat: "0.8g of fat",
  nutrition_protein: "3g of protein",
  nutrition_carbs: "6g of carbohydrate",
  nutrition_sugar: "0.9g of sugar (naturally occurring)",
  nutrition_fiber: "3.3g fiber"
)
produce.photo.attach(io: parsley_file, filename: "nes.png", content_type: "image/png")
produce.save

fennel_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670843020/fennel_pgnaio.jpg")

produce = Produce.new(
  name: "Fennel",
  description: "Fennel contains beta-carotene (which is converted to vitamin A in the body) and vitamin C, which is important for collagen production and tissue repair. Both these nutrients play an important role in maintaining the health of the skin, as well as the mucous membranes that protect organs like the respiratory tract.",
  nutrition_calories: "31 calories",
  nutrition_fat: "0.2g of fat",
  nutrition_protein: "1.2g of protein",
  nutrition_carbs: "7g of carbohydrate",
  nutrition_fiber: "3.1g fiber"
)
produce.photo.attach(io: fennel_file, filename: "nes.png", content_type: "image/png")
produce.save

shallot_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670843046/what-are-shallots-3-600x900_eaa2ko.jpg")

produce = Produce.new(
  name: "Shallots",
  description: "Shallots have a delicate and sweet flavor with a hint of sharpness, while onions bring a more intense heat. You can substitute shallots in nearly any recipe that calls for onions—just make sure you're using the same volume.",
  nutrition_calories: "72 calories",
  nutrition_fat: "0.1g of fat",
  nutrition_protein: "2.5g of protein",
  nutrition_carbs: "17g of carbohydrate",
  nutrition_sugar: "8g of sugar (naturally occurring)",
  nutrition_fiber: "3.2g fiber"
)
produce.photo.attach(io: shallot_file, filename: "nes.png", content_type: "image/png")
produce.save

pakchoy_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670843110/481d0d1f-3954-49fe-8d97-2702871941ef--bok-choy_food52_mark_weinberg_14-11-18_0033_b9aqkt.jpg")

produce = Produce.new(
  name: "Pak choy",
  description: "It's high in beta carotene, which our bodies turn into Vitamin A. It's also high in Vitamins C and K -- actually, one cup provides 140% of our daily recommended Vitamin A and 70% of daily recommended Vitamin C…and one cup has less than 20 calories! It is also a good source of Omega-3, fiber, calcium and folate.",
  nutrition_calories: "9 calories",
  nutrition_protein: "1.05g of protein",
  nutrition_carbs: "1.53g of carbohydrate",
  nutrition_sugar: "0.8g of sugar (naturally occurring)",
  nutrition_fiber: "0.7g fiber"
)
produce.photo.attach(io: pakchoy_file, filename: "nes.png", content_type: "image/png")
produce.save

broccoli_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670843168/EBF_BroccoliFloretsBag-020-2_ws9gd7.png")

produce = Produce.new(
  name: "Broccoli",
  description: "It is low in calories but contains a wealth of nutrients and antioxidants that support many aspects of human health. Broccoli is a cruciferous vegetable, alongside kale, cauliflower, Brussels sprouts, bok choy, cabbage, collard greens, rutabaga, and turnips.",
  nutrition_calories: "34 calories",
  nutrition_fat: "0.4g of fat",
  nutrition_protein: "2.8g of protein",
  nutrition_carbs: "7g of carbohydrate",
  nutrition_sugar: "1.7g of sugar (naturally occurring)",
  nutrition_fiber: "2.6g fiber"
)
produce.photo.attach(io: broccoli_file, filename: "nes.png", content_type: "image/png")
produce.save

celery_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670843211/1c340c24e50e2a71609db0d2c0d77849b36ba2b4_nj63gd.jpg")

produce = Produce.new(
  name: "Celery",
  description: "Although celery has a high water content, it contains numerous vitamins and minerals, including potassium and calcium, which are important for heart health. It also contains folate and vitamin K, both of which are required for the formation of red blood cells and effective blood clotting.",
  nutrition_calories: "14 calories",
  nutrition_protein: "1g of protein",
  nutrition_carbs: "3g of carbohydrate",
  nutrition_sugar: "1.3g of sugar (naturally occurring)",
  nutrition_fiber: "1.6g fiber"
)
produce.photo.attach(io: celery_file, filename: "nes.png", content_type: "image/png")
produce.save

plum_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670843301/santa_rosa_1_lr_sq_d32c08e2-0cf8-445c-abf7-8681e5b6d852_1600x_xgzrzu.jpg")

produce = Produce.new(
  name: "Plums",
  description: "Plums and prunes are rich in antioxidants, which are helpful for reducing inflammation and protecting your cells from damage by free radicals. They are particularly high in polyphenol antioxidants, which have positive effects on bone health and may help reduce the risk of heart disease and diabetes.",
  nutrition_calories: "46 calories",
  nutrition_fat: "0.3g of fat",
  nutrition_protein: "0.7g of protein",
  nutrition_carbs: "11g of carbohydrate",
  nutrition_sugar: "10g of sugar (naturally occurring)",
  nutrition_fiber: "1.4g fiber"
)
produce.photo.attach(io: plum_file, filename: "nes.png", content_type: "image/png")
produce.save

cabbage_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670843338/redgrncabbagex-56a495175f9b58b7d0d7ae20_s5uc5h.jpg")

produce = Produce.new(
  name: "Cabbage",
  description: "Cabbage is often associated with the infamous cabbage soup diet, but this crisp, inexpensive, and versatile veggie can be used in many recipes and add crunch and color to salads and sandwiches. Cabbage provides fiber and other nutrients like potassium and vitamin K, making it a great complement to a healthy lifestyle.",
  nutrition_calories: "25 calories",
  nutrition_fat: "0.1g of fat",
  nutrition_protein: "1.3g of protein",
  nutrition_carbs: "6g of carbohydrate",
  nutrition_sugar: "3.2g of sugar (naturally occurring)",
  nutrition_fiber: "2.5g fiber"
)
produce.photo.attach(io: cabbage_file, filename: "nes.png", content_type: "image/png")
produce.save

rhubarb_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670843424/Rhubarb-TOHAM20_PU4548_B06_07_1bC-sq-FT_l8yaxh.jpg")

produce = Produce.new(
  name: "Rhubarb",
  description: "From glowing skin to stronger bones, rhubarb benefits are as plentiful as the stalks in your backyard!",
  nutrition_calories: "21 calories",
  nutrition_fat: "0.2g of fat",
  nutrition_protein: "0.9g of protein",
  nutrition_carbs: "4.5g of carbohydrate",
  nutrition_sugar: "1.1g of sugar (naturally occurring)",
  nutrition_fiber: "1.8g fiber"
)
produce.photo.attach(io: rhubarb_file, filename: "nes.png", content_type: "image/png")
produce.save

kale_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670843935/Kale-Growing-Guides-Tips-and-Information-post_qvvfct.jpg")

produce = Produce.new(
  name: "Kale",
  description: "Kale contains four times the vitamin C content and twice the selenium content of spinach, as well as nutrients like vitamin E and beta-carotene. These are all important for supporting a healthy immune system.",
  nutrition_calories: "43 calories",
  nutrition_fat: "1.49g of fat",
  nutrition_protein: "2.29g of protein",
  nutrition_carbs: "4.42g of carbohydrate",
  nutrition_sugar: "0.8g of sugar (naturally occurring)",
  nutrition_fiber: "4.1g fiber"
)
produce.photo.attach(io: kale_file, filename: "nes.png", content_type: "image/png")
produce.save

sprouts_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670843959/Brussels_sprout_closeup_nfzbyi.jpg")

produce = Produce.new(
  name: "Brussels Sprouts",
  description: "Brussels sprouts are low in calories and rich in protein. Research suggests that they may help to decrease the risk of heart disease and diabetes.",
  nutrition_calories: "43 calories",
  nutrition_fat: "0.3g of fat",
  nutrition_protein: "3.4g of protein",
  nutrition_carbs: "9.0g of carbohydrate",
  nutrition_sugar: "2.2g of sugar (naturally occurring)",
  nutrition_fiber: "3.8g fiber"
)
produce.photo.attach(io: sprouts_file, filename: "nes.png", content_type: "image/png")
produce.save

parsnip_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670844040/ghows-TX-201019757-3e0139fd_kntaqb.jpg")

produce = Produce.new(
  name: "Parsnips",
  description: "A parsnip resembles a carrot, and indeed they are part of the same family. But parsnips don't taste like carrots. They're sweeter—think sweet potatoes—and they have a delicious naturally nutty or earthy flavour.",
  nutrition_calories: "75 calories",
  nutrition_fat: "0.3g of fat",
  nutrition_protein: "1.2g of protein",
  nutrition_carbs: "18.0g of carbohydrate",
  nutrition_sugar: "4.8g of sugar (naturally occurring)",
  nutrition_fiber: "4.9g fiber"
)
produce.photo.attach(io: parsnip_file, filename: "nes.png", content_type: "image/png")
produce.save

celeriac_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670844100/freshorganiccelery_368571-1-295e69d80bdb4737bc74d25bf647b89f_kotopx.jpg")

produce = Produce.new(
  name: "Celeriac",
  description: "It may have a knobby, gnarled skin but like they always say: do not judge a vegetable by its surface! Once you cut through the bark-like peel, you will be surprised that a vegetable this delicious, wonderfully hearty and eminently storable is not at the top of all grocery lists.",
  nutrition_calories: "42 calories",
  nutrition_fat: "0.3g of fat",
  nutrition_protein: "1.5g of protein",
  nutrition_carbs: "9.2g of carbohydrate",
  nutrition_sugar: "2.5g of sugar (naturally occurring)",
  nutrition_fiber: "1.8g fiber"
)
produce.photo.attach(io: celeriac_file, filename: "nes.png", content_type: "image/png")
produce.save

kohlrabi_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670844211/Kohlrabi-shutterstock_192109988_ofsmhy.jpg")

produce = Produce.new(
  name: "Kohlrabi",
  description: "Smaller kohlrabi bulbs tend to be more tender and flavorful, but the large ones are also fine for cooking and eating. The bulb and the leaves are all edible (the freshest kohlrabi will still have the leaves attached, which can be eaten raw or cooked like any greens).",
  nutrition_calories: "27 calories",
  nutrition_fat: "0.1g of fat",
  nutrition_protein: "1.7g of protein",
  nutrition_carbs: "6.2g of carbohydrate",
  nutrition_sugar: "2.6g of sugar (naturally occurring)",
  nutrition_fiber: "3.6g fiber"
)
produce.photo.attach(io: kohlrabi_file, filename: "nes.png", content_type: "image/png")
produce.save

jerusalemartichoke_file = URI.open("https://res.cloudinary.com/dy6a6ouke/image/upload/v1670844300/GettyImages-973746730-2000-a0f30504d6fd4a27bbd0025cc2c1239b_ebrlpx.jpg")

produce = Produce.new(
  name: "Jerusalem Artichoke",
  description: "Jerusalem artichokes are rich in iron to give you energy, along with potassium and vitamin B1, which support your muscles and nerves. Although they're sweet, their starchy fibre stops any spikes in blood sugar levels.",
  nutrition_calories: "73 calories",
  nutrition_fat: "0g of fat",
  nutrition_protein: "2g of protein",
  nutrition_carbs: "17g of carbohydrate",
  nutrition_sugar: "10g of sugar (naturally occurring)",
  nutrition_fiber: "1.6g fiber"
)
produce.photo.attach(io: jerusalemartichoke_file, filename: "nes.png", content_type: "image/png")
produce.save


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

Season.destroy_all
january = Season.create(name: "January")
february = Season.create(name: "February")
march = Season.create(name: "March")
april = Season.create(name: "April")
may = Season.create(name: "May")
june = Season.create(name: "June")
july = Season.create(name: "July")
august = Season.create(name: "August")
september = Season.create(name: "September")
october = Season.create(name: "October")
november = Season.create(name: "November")
december = Season.create(name: "December")

puts "#{Season.count} seasons created."

Produce.all.each do |product|
  months_array = []
  rand(1..12).times do
    months_array << Season.all.sample
  end
  months_array.uniq.each { |month| ProduceSeason.create(produce: product, season: month) }
end
