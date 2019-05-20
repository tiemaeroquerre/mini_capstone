User.create!([
  {name: "Tiemae", email: "roquerre.t@gmail.com", password_digest: "$2a$10$WimOC0eilNPE0XC5ZtNLNuW498O/bVu6EpA/gsdzLGhF7I5N4gMfa"},
  {name: "Jonny", email: "rocket@gmail.com", password_digest: "$2a$10$DVEv8m.RYayDQOpQzPVH/OV.dVjyJcyTplz1LfJHdZsrQ9Q.ulV0K"},
  {name: "Mary B.", email: "mary.b@gmail.com", password_digest: "$2a$10$mFSR4bsSByNHZFcBPdJmU.YZujXjkw5ExL3YyGFbMnhN7FUVZxHCq"}
])
Supplier.create!([
  {name: "Dragon Works", email: "bartholemew@dragons.com", phone_number: "9008079654"},
  {name: "Proctor and Gamble", email: "jenny@png.com", phone_number: "9789904567"},
  {name: "Johnson&Johnson", email: "rick@jnj.com", phone_number: "7814598878"}
])

Product.create!([
  {name: "Complete Hair Kit", price: "44.0", description: "This combination of products covers all the bases. Experience the magic of full on hair care.", in_stock: true, supplier_id: 1},
  {name: "The Non Prescription Hair Kit", price: "30.0", description: "This combination of products covers all the bases - stops further hair loss, grows new hair, and keeps the hair you have looking good. It’s the comprehensive answer to questions like 'Am I losing my hair?' and 'Is it me or is my hair thinning?'. It kind of was...but now it’s not.", in_stock: true, supplier_id: 2},
  {name: "Finasteride", price: "28.5", description: "More hair...this is the pill for that. It treats male pattern baldness, at the crown and in the middle of the scalp. You’ll see thicker hair and slower hair loss with regular use.", in_stock: true, supplier_id: 3},
  {name: "The Shampoo and Conditioner", price: "33.0", description: "Maybe you're running towards your high school yearbook picture head of hair, maybe you're running away from looking like your Uncle Frank. Either way, this Tag Team is an amazing way to start giving that noggin what it deserves.", in_stock: true, supplier_id: 2},
  {name: "Unicorn Set", price: "8.0", description: "The magic stuff.", in_stock: true, supplier_id: 1}
])

Image.create!([
  {image_url: "https://res.cloudinary.com/forhims/image/upload/q_auto,f_auto,fl_lossy/Hims_PLP_Hair_Product_RXKit", description: "Complete Hair Kit", product_id: 1},
  {image_url: "https://res.cloudinary.com/forhims/image/upload/q_auto,f_auto,fl_lossy/Hims_PLP_Hair_Product_NonRXKit", description: "The Non Prescription Hair Kit", product_id: 2},
  {image_url: "https://res.cloudinary.com/forhims/image/upload/q_auto,f_auto,fl_lossy/Hims_PLP_Hair_Product_Finasteride", description: "Finasteride", product_id: 3},
  {image_url: "https://res.cloudinary.com/forhims/image/upload/q_auto,f_auto,fl_lossy/Hims_PLP_Hair_Product_ShampooConditioner", description: "The Shampoo and Conditioner", product_id: 3},
  {image_url: "https://www.forhims.com/hair-loss/vitamins", description: "Unicorn Set", product_id: 3}
])

