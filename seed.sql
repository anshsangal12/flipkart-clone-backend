-- Clear existing data
TRUNCATE TABLE products CASCADE;

-- Insert sample products using Local Images
INSERT INTO products (name, description, price, original_price, category, brand, stock, rating, review_count, images)
VALUES 
(
  'Apple iPhone 15', 
  'A16 Bionic chip, 48MP Main camera, Dynamic Island. Super Retina XDR display.', 
  79999.00, 89999.00, 'Mobiles', 'Apple', 30, 4.7, 8900, 
  ARRAY[
    '/images/iphone 15 1.jpeg',
    '/images/iphone 15 2.jpeg',
    '/images/iphone 15 3.jpeg'
  ]
),
(
  'Samsung Galaxy M34 5G', 
  '120Hz sAMOLED Display, 50MP Triple No Shake Cam, 6000 mAh Battery.', 
  18999.00, 24999.00, 'Mobiles', 'Samsung', 50, 4.3, 12500, 
  ARRAY[
    '/images/samsung 1.jpeg',
    '/images/samsung 2.jpeg',
    '/images/samsung 3.jpeg'
  ]
),
(
  'boAt Rockerz 450', 
  'Bluetooth Wireless On Ear Headphones with Mic, Upto 15 Hours Playback.', 
  1299.00, 3499.00, 'Electronics', 'boAt', 150, 4.1, 45000, 
  ARRAY[
    '/images/boat 1.jpeg',
    '/images/boat 2.jpeg',
    '/images/boat 3.jpeg'
  ]
),
(
  'Nike Air Max Running Shoes', 
  'Mens Lifestyle Shoes. Featuring the first-ever Max Air unit created specifically for Nike.', 
  8995.00, 12995.00, 'Footwear', 'Nike', 25, 4.4, 3200, 
  ARRAY[
    '/images/nike 1.jpeg',
    '/images/nike 2.jpeg',
    '/images/nike 3.jpeg'
  ]
),
(
  'Levis Slim Fit Jacket', 
  'Mens Slim Fit Jacket. A modern slim with room to move, a classic since right now.', 
  2999.00, 4999.00, 'Clothing', 'Levis', 80, 4.2, 7800, 
  ARRAY[
    '/images/levis 1.jpeg',
    '/images/levis 2.jpeg'
  ]
),
(
  'LG 32 inch Smart TV', 
  'WebOS HD Ready Smart LED TV. Active HDR, WebOS Smart TV, Wi-Fi.', 
  22999.00, 32999.00, 'Appliances', 'LG', 15, 4.3, 5600, 
  ARRAY[
    '/images/lg 32 inch 1.webp',
    '/images/lg 32 inch 2.webp'
  ]
),
(
  'SanDisk 1TB SSD Drive', 
  'High-speed external solid state drive. Powerful performance.', 
  2495.00, 3999.00, 'Electronics', 'SanDisk', 45, 4.2, 9800, 
  ARRAY[
    '/images/sandisk 1.jpeg',
    '/images/sandisk 2.jpeg',
    '/images/sandisk 3.jpeg'
  ]
),
(
  'Wildcraft Backpack 30L', 
  'Water Resistant Casual Backpack. Ergonomic design with padded shoulder straps.', 
  1299.00, 2499.00, 'Bags', 'Wildcraft', 100, 4.0, 2300, 
  ARRAY[
    '/images/backpack 1.jpeg',
    '/images/backpack 2.webp'
  ]
);