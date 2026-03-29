-- Clear existing data to avoid duplicates
TRUNCATE TABLE products CASCADE;

-- Insert sample products with multiple ultra-reliable images per product
INSERT INTO products (name, description, price, original_price, category, brand, stock, rating, review_count, images)
VALUES 
(
  'Apple iPhone 15', 
  'A16 Bionic chip, 48MP Main camera, Dynamic Island. Super Retina XDR display.', 
  79999.00, 89999.00, 'Mobiles', 'Apple', 30, 4.7, 8900, 
  ARRAY[
    'https://placehold.co/600x600/f4f4f4/333333/png?text=iPhone+15+(Front)',
    'https://placehold.co/600x600/f4f4f4/333333/png?text=iPhone+15+(Back)',
    'https://placehold.co/600x600/f4f4f4/333333/png?text=iPhone+15+(Side)'
  ]
),
(
  'Samsung Galaxy M34 5G', 
  '120Hz sAMOLED Display, 50MP Triple No Shake Cam, 6000 mAh Battery.', 
  18999.00, 24999.00, 'Mobiles', 'Samsung', 50, 4.3, 12500, 
  ARRAY[
    'https://placehold.co/600x600/f4f4f4/333333/png?text=Galaxy+M34+(Blue)',
    'https://placehold.co/600x600/f4f4f4/333333/png?text=Galaxy+M34+(Black)'
  ]
),
(
  'boAt Rockerz 450', 
  'Bluetooth Wireless On Ear Headphones with Mic, Upto 15 Hours Playback, 40MM Drivers.', 
  1299.00, 3499.00, 'Electronics', 'boAt', 150, 4.1, 45000, 
  ARRAY[
    'https://placehold.co/600x600/f4f4f4/333333/png?text=boAt+Headphones',
    'https://placehold.co/600x600/f4f4f4/333333/png?text=Earcups+Close-up',
    'https://placehold.co/600x600/f4f4f4/333333/png?text=Audio+Cable'
  ]
),
(
  'Nike Air Max 270', 
  'Mens Lifestyle Shoes. Featuring the first-ever Max Air unit created specifically for Nike Sportswear.', 
  8995.00, 12995.00, 'Footwear', 'Nike', 25, 4.4, 3200, 
  ARRAY[
    'https://placehold.co/600x600/f4f4f4/333333/png?text=Nike+Air+Max',
    'https://placehold.co/600x600/f4f4f4/333333/png?text=Sole+View',
    'https://placehold.co/600x600/f4f4f4/333333/png?text=Top+View'
  ]
),
(
  'Levis Slim Fit Jacket', 
  'Mens Slim Fit Jacket. A modern slim with room to move, a classic since right now.', 
  2999.00, 4999.00, 'Clothing', 'Levis', 80, 4.2, 7800, 
  ARRAY[
    'https://fakestoreapi.com/img/71li-ujtlVG._AC_UX679_.jpg',
    'https://placehold.co/600x600/f4f4f4/333333/png?text=Jacket+(Back)',
    'https://placehold.co/600x600/f4f4f4/333333/png?text=Fabric+Close-up'
  ]
),
(
  'LG 32 inch Smart TV', 
  'WebOS HD Ready Smart LED TV. Active HDR, WebOS Smart TV, Wi-Fi.', 
  22999.00, 32999.00, 'Appliances', 'LG', 15, 4.3, 5600, 
  ARRAY[
    'https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg',
    'https://placehold.co/600x600/f4f4f4/333333/png?text=TV+Side+Profile',
    'https://placehold.co/600x600/f4f4f4/333333/png?text=Remote+Control'
  ]
),
(
  'SanDisk 1TB SSD Drive', 
  'High-speed external solid state drive. Powerful performance.', 
  2495.00, 3999.00, 'Electronics', 'SanDisk', 45, 4.2, 9800, 
  ARRAY[
    'https://fakestoreapi.com/img/61U7T1koQqL._AC_SX679_.jpg',
    'https://placehold.co/600x600/f4f4f4/333333/png?text=SSD+Back+Side'
  ]
),
(
  'Wildcraft Backpack 30L', 
  'Water Resistant Casual Backpack. Ergonomic design with padded shoulder straps.', 
  1299.00, 2499.00, 'Bags', 'Wildcraft', 100, 4.0, 2300, 
  ARRAY[
    'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
    'https://placehold.co/600x600/f4f4f4/333333/png?text=Backpack+(Side+View)',
    'https://placehold.co/600x600/f4f4f4/333333/png?text=Inside+Compartments'
  ]
);