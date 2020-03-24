CREATE TABLE flask_test.users (
  id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  created_at DATETIME,
  updated_at DATETIME
);
INSERT INTO flask_test.users (id, name, created_at, updated_at) VALUES (1, 'hoge', NOW(), NOW());
