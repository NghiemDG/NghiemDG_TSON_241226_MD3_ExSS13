create database library_management;
use library_management;

CREATE table books(
bookID int auto_increment primary key,
title varchar(100) not null unique,
author varchar(50) not null,
publishedYear year not null,
category varchar(50) not null
);
CREATE table readers(
readerId int auto_increment primary key,
name varchar(50) NOT NULL,
birthDate DATE NOT NULL,
address VARCHAR(150),
phoneNumber VARCHAR(11)
);
CREATE table borrows(
borrowId INT auto_increment PRIMARY KEY,
borrowDate DATE NOT NULL,
returnDate DATE,
bookId INT NOT NULL,
readerId INT NOT NULL,
foreign key (bookId) references books (bookID)
ON delete cascade,
foreign key(readerId) references readers(readerId)
ON delete cascade
);