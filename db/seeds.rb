# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


product = Product.create(name: "Complete Hair Kit", price: 44, image_url: "https://res.cloudinary.com/forhims/image/upload/q_auto,f_auto,fl_lossy/Hims_PLP_Hair_Product_RXKit", description: "This combination of products covers all the bases.
 1. Finasteride. 30 x 1 mg pills 
 2. The Shampoo. DHT 8 oz bottle 
 3. Minoxidil. 2 oz bottle 
 4. The Vitamin. 60 Biotin Gummies")
product = Product.create(name: "The Non Prescription Hair Kit", price: 30, image_url: "https://res.cloudinary.com/forhims/image/upload/q_auto,f_auto,fl_lossy/Hims_PLP_Hair_Product_NonRXKit", description: "This combination of products covers all the bases - stops further hair loss, grows new hair, and keeps the hair you have looking good. It’s the comprehensive answer to questions like 'Am I losing my hair?' and 'Is it me or is my hair thinning?'. It kind of was...but now it’s not.
1. Minoxidil. 2oz bottle
2. The Shampoo. DHT 8oz bottle
3. The Vitamin. 60 Biotin Gummies")
product = Product.create(name: "Finasteride", price: 28.50, image_url: "https://res.cloudinary.com/forhims/image/upload/q_auto,f_auto,fl_lossy/Hims_PLP_Hair_Product_Finasteride", description: "More hair...this is the pill for that. It treats male pattern baldness, at the crown and in the middle of the scalp. You’ll see thicker hair and slower hair loss with regular use.")
product = Product.create(name: "The Shampoo and Conditioner", price: 33, image_url: "https://res.cloudinary.com/forhims/image/upload/q_auto,f_auto,fl_lossy/Hims_PLP_Hair_Product_ShampooConditioner", description: "Maybe you're running towards your high school yearbook picture head of hair, maybe you're running away from looking like your Uncle Frank. Either way, this Tag Team is an amazing way to start giving that noggin what it deserves.")

product.save