CREATE TABLE users (
  user_id INT PRIMARY KEY,
  user_name VARCHAR(100),
  email VARCHAR(100),
  join_date DATE
);

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  category VARCHAR(50),
  price DECIMAL(10,2)
);

CREATE TABLE reviews (
  review_id INT PRIMARY KEY,
  user_id INT,
  product_id INT,
  rating INT,
  review_text TEXT,
  review_date DATE
);