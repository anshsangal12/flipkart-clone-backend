-- Clear existing data to avoid duplicates if you run this multiple times
TRUNCATE TABLE products CASCADE;

-- Insert sample Flipkart products with MULTIPLE images for EVERY product
INSERT INTO products (name, description, price, original_price, category, brand, stock, rating, review_count, images)
VALUES 
(
  'Apple iPhone 15', 
  'A16 Bionic chip, 48MP Main camera, Dynamic Island. Super Retina XDR display.', 
  79999.00, 89999.00, 'Mobiles', 'Apple', 30, 4.7, 8900, 
  ARRAY[
    'https://images.unsplash.com/photo-1616348436168-de43ad0db179?w=500&q=80',
    'https://images.unsplash.com/photo-1510557880182-3d4d3cba35a5?w=500&q=80',
    'https://images.unsplash.com/photo-1591337676887-a217a6970a8a?w=500&q=80'
  ]
),
(
  'Samsung Galaxy M34 5G', 
  '120Hz sAMOLED Display, 50MP Triple No Shake Cam, 6000 mAh Battery.', 
  18999.00, 24999.00, 'Mobiles', 'Samsung', 50, 4.3, 12500, 
  ARRAY[
    'https://images.unsplash.com/photo-1610945415295-d9bbf067e59c?w=500&q=80',
    'https://images.unsplash.com/photo-1585060544812-6b45742d762f?w=500&q=80',
    'https://images.unsplash.com/photo-1601784551446-20c9e07cdbfd?w=500&q=80'
  ]
),
(
  'boAt Rockerz 450', 
  'Bluetooth Wireless On Ear Headphones with Mic, Upto 15 Hours Playback, 40MM Drivers.', 
  1299.00, 3499.00, 'Electronics', 'boAt', 150, 4.1, 45000, 
  ARRAY[
    'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?w=500&q=80',
    'https://images.unsplash.com/photo-1484704849700-f032a568e944?w=500&q=80',
    'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500&q=80'
  ]
),
(
  'Nike Air Max 270', 
  'Men''s Lifestyle Shoes. Featuring the first-ever Max Air unit created specifically for Nike Sportswear.', 
  8995.00, 12995.00, 'Footwear', 'Nike', 25, 4.4, 3200, 
  ARRAY[
    'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=500&q=80',
    'https://images.unsplash.com/photo-1605348532760-6753d2c43329?w=500&q=80',
    'https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?w=500&q=80'
  ]
),
(
  'Levis 511 Slim Jeans', 
  'Men''s Slim Fit Jeans. A modern slim with room to move, the 511 Slim Fit Jeans are a classic since right now.', 
  2999.00, 4999.00, 'Clothing', 'Levis', 80, 4.2, 7800, 
  ARRAY[
    'https://images.unsplash.com/photo-1542272604-787c3835535d?w=500&q=80',
    'https://images.unsplash.com/photo-1604176354204-926873812d4e?w=500&q=80',
    'https://images.unsplash.com/photo-1584328627384-9d49ce68ab42?w=500&q=80'
  ]
),
(
  'LG 32 inch Smart TV', 
  'WebOS HD Ready Smart LED TV. Active HDR, WebOS Smart TV, Wi-Fi.', 
  22999.00, 32999.00, 'Appliances', 'LG', 15, 4.3, 5600, 
  ARRAY[
    'https://images.unsplash.com/photo-1593359677879-a4bb92f829d1?w=500&q=80',
    'https://images.unsplash.com/photo-1552831388-6a0b35077328?w=500&q=80',
    'https://images.unsplash.com/photo-1601944177325-f8867652837f?w=500&q=80'
  ]
),
(
  'Prestige Iris 750W Mixer', 
  'Mixer Grinder with 3 Stainless Steel Jars and 1 Juicer Jar. Powerful 750W motor.', 
  2495.00, 3999.00, 'Appliances', 'Prestige', 45, 4.2, 9800, 
  ARRAY[
    'https://images.unsplash.com/photo-1585515320310-259814833e62?w=500&q=80',
    'https://images.unsplash.com/photo-1599598425947-33001c045051?w=500&q=80',
    'https://images.unsplash.com/photo-1610832958506-aa56368176cf?w=500&q=80'
  ]
),
(
  'Wildcraft Backpack 30L', 
  'Water Resistant Casual Backpack. Ergonomic design with padded shoulder straps.', 
  1299.00, 2499.00, 'Bags', 'Wildcraft', 100, 4.0, 2300, 
  ARRAY[
    'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=500&q=80',
    'https://images.unsplash.com/photo-1491841550275-ad7854e35ca6?w=500&q=80',
    'https://images.unsplash.com/photo-1504280625753-ce26ffaf1532?w=500&q=80'
  ]
);