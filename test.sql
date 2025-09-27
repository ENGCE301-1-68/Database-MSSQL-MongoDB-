-- 1. สร้างฐานข้อมูล โดยกำหนดชื่อเป็นรหัสนักศึกษา (ไม่รวมขีด)
CREATE DATABASE ce_665432060457DB; --เช่น se_67123456789DB

CREATE DATABASE StudentDB;


-- ทำการระบุใช้งาน Database ที่สร้างขึ้น
USE ce_665432060457DB;

-- 2. สร้างตาราง Students
CREATE TABLE Students (
    id INT IDENTITY(1,1) PRIMARY KEY,
    firstName NVARCHAR(50) NOT NULL,
    lastName NVARCHAR(50) NOT NULL,
    email NVARCHAR(100) UNIQUE,
    age INT,
    major NVARCHAR(100),
    createdAt DATETIME2 DEFAULT GETDATE()
);

-- 3. INSERT - เพิ่มข้อมูล
INSERT INTO Students (firstName, lastName, email, age, major)
VALUES (N'สมชาย', N'ใจดี', 'somchai@email.com', 20, 'Computer Science');

INSERT INTO Students (firstName, lastName, email, age, major)
VALUES (N'สมหญิง', N'รักเรียน', 'somying@email.com', 19, 'Software Engineering');

-- 4. SELECT - ดึงข้อมูล
SELECT * FROM Students;                    
-- ทั้งหมด
SELECT * FROM Students WHERE age > 19;     
-- ตามเงื่อนไข
SELECT firstName, lastName FROM Students;  
-- เฉพาะ column

-- 5. UPDATE - แก้ไขข้อมูล
UPDATE Students 
SET age = 21, major = 'Computer Engineering'
WHERE id = 1;

-- 6. DELETE - ลบข้อมูล
DELETE FROM Students WHERE id = 2;

-- 7. การ Query ขั้นสูง
SELECT major, COUNT(*) as studentCount 
FROM Students 
GROUP BY major;

SELECT * FROM Students 
ORDER BY age DESC;

-- 7. ลบ DB
ALTER DATABASE [ce_665432060457DB] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE [ce_665432060457DB];

