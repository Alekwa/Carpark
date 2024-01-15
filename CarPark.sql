-- Create the Customers table
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    First_Name VARCHAR(20),
    Last_Name VARCHAR(20)
);

-- Create the ParkingRecords table
CREATE TABLE ParkingRecords_ (
    RecordID INT AUTO_INCREMENT PRIMARY KEY,
    RegistrationNumber VARCHAR(20) NOT NULL,
    CustomerID INT,
    SpaceNumber INT,	
    IsBooked BOOLEAN DEFAULT FALSE,
    Status ENUM('Free', 'Booked', 'Occupied') DEFAULT 'Free',
    TimeIn DATETIME NOT NULL,
    TimeOut DATETIME,
    ParkingFee DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
