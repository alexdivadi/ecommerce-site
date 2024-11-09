-- Copy scripts from here to insert data into the database

-- Insert mock categories into ProductCategory
INSERT INTO product_productcategory (name, sort_order)
VALUES
  ('Electronics', 1),
  ('Home Appliances', 2),
  ('Clothing', 3),
  ('Books', 4),
  ('Toys', 5),
  ('Sports', 6),
  ('Furniture', 7),
  ('Beauty', 8),
  ('Groceries', 9),
  ('Automotive', 10);

  -- Insert mock products into Product
INSERT INTO product_product (name, description, price, image, category_id)
VALUES
  ('Smartphone', 'Latest model with high-definition camera and fast processor', 799.99, 'https://placehold.co/200?font=roboto&text=Smartphone', 1),
  ('Laptop', 'Powerful laptop with 16GB RAM and 512GB SSD', 1299.99, 'https://placehold.co/200?font=roboto&text=Laptop', 1),
  ('Washing Machine', 'Efficient washing machine with multiple modes', 499.99, 'https://placehold.co/200?font=roboto&text=Washing+Machine', 2),
  ('Air Conditioner', 'Energy-saving air conditioner for home use', 349.99, 'https://placehold.co/200?font=roboto&text=Air+Conditioner', 2),
  ('T-shirt', 'Cotton t-shirt with a cool design', 19.99, 'https://placehold.co/200?font=roboto&text=TShirt', 3),
  ('Jeans', 'Stylish denim jeans for everyday wear', 39.99, 'https://placehold.co/200?font=roboto&text=Jeans', 3),
  ('Novel: The Great Adventure', 'A gripping adventure story set in the mountains', 14.99, 'https://placehold.co/200?font=roboto&text=Book', 4),
  ('Sci-Fi Novel', 'A thrilling sci-fi novel exploring deep space', 12.99, 'https://placehold.co/200?font=roboto&text=Scifi+Book', 4),
  ('Lego Set', 'Lego building set for kids', 59.99, 'https://placehold.co/200?font=roboto&text=Lego+Set', 5),
  ('Doll', 'Beautiful doll with accessories for children', 29.99, 'https://placehold.co/200?font=roboto&text=Doll', 5),
  ('Football', 'Official size football for outdoor games', 19.99, 'https://placehold.co/200?font=roboto&text=Football', 6),
  ('Basketball', 'Durable basketball for indoor and outdoor play', 25.99, 'https://placehold.co/200?font=roboto&text=Basketball', 6),
  ('Sofa', 'Comfortable sofa with soft cushions', 799.99, 'https://placehold.co/200?font=roboto&text=Sofa', 7),
  ('Dining Table', 'Modern dining table for 6 people', 499.99, 'https://placehold.co/200?font=roboto&text=Dining+Table', 7),
  ('Shampoo', 'Organic shampoo for healthy hair', 8.99, 'https://placehold.co/200?font=roboto&text=Shampoo', 8),
  ('Skincare Cream', 'Moisturizing cream for daily skincare', 14.99, 'https://placehold.co/200?font=roboto&text=Skincare', 8),
  ('Rice', 'Premium quality rice', 12.99, 'https://placehold.co/200?font=roboto&text=Rice', 9),
  ('Organic Coffee', 'Freshly roasted organic coffee beans', 18.99, 'https://placehold.co/200?font=roboto&text=Coffee', 9),
  ('Car Battery', 'High-performance car battery', 129.99, 'https://placehold.co/200?font=roboto&text=Car+Battery', 10),
  ('Tire', 'Durable tire for all weather conditions', 89.99, 'https://placehold.co/200?font=roboto&text=Tire', 10),
  ('Smartwatch', 'Smartwatch with fitness tracking features', 199.99, 'https://placehold.co/200?font=roboto&text=Smartwatch', 1),
  ('Headphones', 'Noise-cancelling headphones with excellent sound quality', 89.99, 'https://placehold.co/200?font=roboto&text=Headphones', 1),
  ('Microwave Oven', 'Compact microwave with 10 preset cooking modes', 99.99, 'https://placehold.co/200?font=roboto&text=Microwave', 2),
  ('Refrigerator', 'Energy-efficient fridge with freezer compartment', 549.99, 'https://placehold.co/200?font=roboto&text=Refrigerator', 2),
  ('Jacket', 'Warm winter jacket with waterproof coating', 79.99, 'https://placehold.co/200?font=roboto&text=Jacket', 3),
  ('Sweater', 'Cozy sweater made from wool blend', 49.99, 'https://placehold.co/200?font=roboto&text=Sweater', 3),
  ('Cookbook', 'Delicious recipes for the home chef', 19.99, 'https://placehold.co/200?font=roboto&text=Cookbook', 4),
  ('Fantasy Novel', 'Epic fantasy tale set in a medieval world', 15.99, 'https://placehold.co/200?font=roboto&text=Fantasy+Book', 4),
  ('Toy Car', 'Remote-controlled toy car for kids', 29.99, 'https://placehold.co/200?font=roboto&text=Toy+Car', 5),
  ('Building Blocks', 'Building block set for creative play', 39.99, 'https://placehold.co/200?font=roboto&text=Building+Blocks', 5),
  ('Yoga Mat', 'Eco-friendly yoga mat for practice at home', 25.99, 'https://placehold.co/200?font=roboto&text=Yoga+Mat', 6),
  ('Dumbbells', 'Set of dumbbells for home workouts', 49.99, 'https://placehold.co/200?font=roboto&text=Dumbbells', 6),
  ('Recliner Chair', 'Ergonomic recliner chair for comfort and relaxation', 399.99, 'https://placehold.co/200?font=roboto&text=Recliner+Chair', 7),
  ('Coffee Table', 'Stylish coffee table with storage', 149.99, 'https://placehold.co/200?font=roboto&text=Coffee+Table', 7),
  ('Face Mask', 'Facial mask for deep pore cleansing', 9.99, 'https://placehold.co/200?font=roboto&text=Face+Mask', 8),
  ('Lip Balm', 'Natural lip balm for smooth lips', 3.99, 'https://placehold.co/200?font=roboto&text=Lip+Balm', 8),
  ('Pasta', 'High-quality pasta for Italian dishes', 7.99, 'https://placehold.co/200?font=roboto&text=Pasta', 9),
  ('Olive Oil', 'Extra virgin olive oil for cooking', 16.99, 'https://placehold.co/200?font=roboto&text=Olive+Oil', 9),
  ('Car Wash Kit', 'Complete car wash kit with brushes and sponges', 39.99, 'https://placehold.co/200?font=roboto&text=Car+Wash+Kit', 10),
  ('Car Charger', 'Portable car charger for quick battery boosts', 19.99, 'https://placehold.co/200?font=roboto&text=Car+Charger', 10);