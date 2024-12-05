-- Create the database
CREATE DATABASE JangsShoppingMall;

-- Switch to the new database
USE JangsShoppingMall;

-- Create the members table
CREATE TABLE Members (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    UsersName VARCHAR(50) NOT NULL,
    Age INT NOT NULL,
    Gender ENUM('Male', 'Female', 'Other') NOT NULL,
    HomeAddress VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(15) NOT NULL,
    EmailAddress VARCHAR(60) NOT NULL
);

-- Insert sample data into the Members table 
INSERT INTO Members (MemberID, UsersName, Age, Gender, HomeAddress, PhoneNumber, EmailAddress) 
VALUES (02, 'John Doe', 23, 'Male', '123 Sesame Street', '123-456-7890', 'john.doe@example.com'), (04, 'Jane Smith', 30, 'Female', '234 Kicsury Lnae', '098-765-4321', 'jane.smith@example.com'); 
-- View all member information 
SELECT * FROM Members; 
-- Update member information 
UPDATE Members
SET Email = 'john.newemail@example.com' 
WHERE MemberID = 1; 
-- Delete a member 
DELETE FROM Members WHERE MemberID = 02; 
-- View specific member information 
SELECT * FROM Members WHERE MemberID = 01;