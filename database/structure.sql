CREATE DATABASE IF NOT EXISTS concordDev;

USE concordDev;

CREATE TABLE IF NOT EXISTS products (
  idProduct INT AUTO_INCREMENT NOT NULL,
  sku NVARCHAR(50) NOT NULL,
  model NVARCHAR(100) NOT NULL,
  description NVARCHAR(250) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  stock INT NOT NULL,
  customPrice DECIMAL(10, 2),
  isCustom BOOL DEFAULT TRUE,
  inHome BOOL DEFAULT FALSE,
  inComming BOOL DEFAULT FALSE,
  cover NVARCHAR(200) NOT NULL,
  status BOOL DEFAULT TRUE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (idProduct)
);

CREATE TABLE IF NOT EXISTS categories (
  idCategory INT AUTO_INCREMENT NOT NULL,
  name NVARCHAR(100) NOT NULL,
  description NVARCHAR(100) NOT NULL,
  status BOOL DEFAULT TRUE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (idCategory)
);

CREATE TABLE IF NOT EXISTS subCategories (
  idSubCategory INT AUTO_INCREMENT NOT NULL,
  name NVARCHAR(100) NOT NULL,
  description NVARCHAR(100) NOT NULL,
  idCaregory INT NOT NULL,
  status BOOL DEFAULT TRUE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (idSubCategory)
);

CREATE TABLE IF NOT EXISTS comments (
  idComment INT AUTO_INCREMENT NOT NULL,
  comment TEXT NOT NULL,
  idProduct INT NOT NULL,
  idUser INT NOT NULL,
  status BOOL DEFAULT TRUE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (idComment)
);

CREATE TABLE IF NOT EXISTS scores (
  idScroe INT AUTO_INCREMENT NOT NULL,
  score INT NOT NULL,
  idProduct INT NOT NULL,
  idUser INT NOT NULL,
  status BOOL DEFAULT TRUE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (idScroe)
);

CREATE TABLE IF NOT EXISTS images (
  idImage INT AUTO_INCREMENT NOT NULL,
  image NVARCHAR(200) NOT NULL,
  idProduct INT AUTO_INCREMENT NOT NULL,
  status BOOL DEFAULT TRUE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (idImage)
);

CREATE TABLE IF NOT EXISTS sizes (
  idSize INT AUTO_INCREMENT NOT NULL,
  size NVARCHAR(50) NOT NULL,
  status BOOL DEFAULT TRUE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (idSize)
);