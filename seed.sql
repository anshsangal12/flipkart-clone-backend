-- Clear existing data
TRUNCATE TABLE products CASCADE;

-- Insert sample products with REAL, Unblockable CDN Images
INSERT INTO products (name, description, price, original_price, category, brand, stock, rating, review_count, images)
VALUES 
(
  'Apple iPhone 15', 
  'A16 Bionic chip, 48MP Main camera, Dynamic Island. Super Retina XDR display.', 
  79999.00, 89999.00, 'Mobiles', 'Apple', 30, 4.7, 8900, 
  ARRAY[
    'https://m.media-amazon.com/images/I/71d7rfSl0wL._SX679_.jpg',
    'https://m.media-amazon.com/images/I/51wQmaAA4NL._SX679_.jpg',
    'https://m.media-amazon.com/images/I/71vwA1n4pPL._SX679_.jpg'
  ]
),
(
  'Samsung Galaxy M34 5G', 
  '120Hz sAMOLED Display, 50MP Triple No Shake Cam, 6000 mAh Battery.', 
  18999.00, 24999.00, 'Mobiles', 'Samsung', 50, 4.3, 12500, 
  ARRAY[
    'https://m.media-amazon.com/images/I/91ItZJh1FDL._SX679_.jpg',
    'https://m.media-amazon.com/images/I/81xD1G84sDL._SX679_.jpg'
  ]
),
(
  'boAt Rockerz 450', 
  'Bluetooth Wireless On Ear Headphones with Mic, Upto 15 Hours Playback, 40MM Drivers.', 
  1299.00, 3499.00, 'Electronics', 'boAt', 150, 4.1, 45000, 
  ARRAY[
    'https://m.media-amazon.com/images/I/51xxA+6E+xL._SX522_.jpg',
    'https://m.media-amazon.com/images/I/71jV1hW4RBL._SX522_.jpg',
    'https://m.media-amazon.com/images/I/61K-gYy2qmL._SX522_.jpg'
  ]
),
(
  'Nike Air Max 270', 
  'Mens Lifestyle Shoes. Featuring the first-ever Max Air unit created specifically for Nike Sportswear.', 
  8995.00, 12995.00, 'Footwear', 'Nike', 25, 4.4, 3200, 
  ARRAY[
    'https://m.media-amazon.com/images/I/71q0W4AOTdL._SY695_.jpg',
    'https://m.media-amazon.com/images/I/71NXYzQh0BL._SY695_.jpg'
  ]
),
(
  'Levis Slim Fit Jacket', 
  'Mens Slim Fit Jacket. A modern slim with room to move, a classic since right now.', 
  2999.00, 4999.00, 'Clothing', 'Levis', 80, 4.2, 7800, 
  ARRAY[
    'https://m.media-amazon.com/images/I/81+XW5r91nL._SY879_.jpg',
    'https://m.media-amazon.com/images/I/81I2MvI1h4L._SY879_.jpg'
  ]
),
(
  'LG 32 inch Smart TV', 
  'WebOS HD Ready Smart LED TV. Active HDR, WebOS Smart TV, Wi-Fi.', 
  22999.00, 32999.00, 'Appliances', 'LG', 15, 4.3, 5600, 
  ARRAY[
    'https://m.media-amazon.com/images/I/81Ph7-x05UL._SX679_.jpg',
    'https://m.media-amazon.com/images/I/81r1j-fBfYL._SX679_.jpg'
  ]
),
(
  'SanDisk 1TB SSD Drive', 
  'High-speed external solid state drive. Powerful performance.', 
  2495.00, 3999.00, 'Electronics', 'SanDisk', 45, 4.2, 9800, 
  ARRAY[
    'https://m.media-amazon.com/images/I/71lUvL0vR+L._SX679_.jpg',
    'https://m.media-amazon.com/images/I/814j2K1UaSL._SX679_.jpg'
  ]
),
(
  'Wildcraft Backpack 30L', 
  'Water Resistant Casual Backpack. Ergonomic design with padded shoulder straps.', 
  1299.00, 2499.00, 'Bags', 'Wildcraft', 100, 4.0, 2300, 
  ARRAY[
    'https://m.media-amazon.com/images/I/81c3yC+G21L._SX679_.jpg',
    'https://m.media-amazon.com/images/I/81+J2tQZ8fL._SX679_.jpg'
  ]
);