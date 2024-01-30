-- Create the Customers table
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    First_Name VARCHAR(20),
    Last_Name VARCHAR(20),
    Username VARCHAR(20) NOT NULL,
    Password VARCHAR(20) NOT NULL
);

-- Create the ParkingRecords table
CREATE TABLE Records (
    RecordID INT AUTO_INCREMENT PRIMARY KEY,
    RegNumber VARCHAR(20) NOT NULL,
    CustomerID INT,
    SpaceNumber INT,
    Status ENUM('Free', 'Booked', 'Occupied') DEFAULT 'Free',
    TimeIn DATETIME NOT NULL,
    TimeOut DATETIME,
    Fee DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
