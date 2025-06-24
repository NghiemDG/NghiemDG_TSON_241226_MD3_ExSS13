create database library_management_04;
use library_management_04;

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
INSERT INTO books (title, author, publishedYear,category) VALUES
('Người nổi tiếng', 'Đàm đạo sĩ', 2010, 'Sách tư vấn định hướng' ),
('Hành trình thành công', 'Nguyễn Hữu Tài', 2012, 'Sách kinh doanh'),
('Lập trình viên giỏi', 'Nguyễn Minh Nhật', 2015, 'Sách công nghệ'),
('Khám phá vũ trụ', 'Lê Ngọc Tú', 2018, 'Sách khoa học'),
('Tư duy đột phá', 'Trần Thanh Bình', 2011, 'Sách kỹ năng sống'),
('Nghệ thuật giao tiếp', 'Phạm Văn Khải', 2013, 'Sách kỹ năng mềm'),
('Sức mạnh tiềm thức', 'Ngô Thanh Hà', 2016, 'Sách tâm lý học'),
('Cuộc đời và ước mơ', 'Nguyễn Thị Lan', 2017, 'Tiểu thuyết'),
('Học cách đầu tư', 'Phạm Văn Long', 2020, 'Sách tài chính'),
('Sống khỏe mạnh', 'Đặng Quang Huy', 2021, 'Sách y học');
INSERT INTO readers (name, birthDate, address, phoneNumber) VALUES
('Tuấn Anh', '1970-05-15', 'HCM', '098833312'),
('Lan Hương', '1985-07-22', 'Hà Nội', '097611223'),
('Minh Tuấn', '1992-11-08', 'Đà Nẵng', '090455678'),
('Hồng Nhung', '2000-02-14', 'Hải Phòng', '091233445'),
('Ngọc Mai', '1995-12-10', 'Nghệ An', '093322211'),
('Quang Dũng', '1980-03-25', 'Cần Thơ', '096733112'),
('Phương Thảo', '1998-08-09', 'Huế', '092211332'),
('Đức Anh', '2001-01-01', 'Bình Dương', '091877665'),
('Bảo Khánh', '1989-06-17', 'Đà Lạt', '094533221'),
('Trần Hoàng', '1990-10-05', 'Quảng Nam', '098812344');
UPDATE readers SET name = CONCAT(name, ' genZ')
WHERE year(birthDate) BETWEEN 1990 AND 2000;
SELECT * FROM readers 
WHERE year(birthDate) < 1975;