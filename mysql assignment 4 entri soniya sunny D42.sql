

CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(50),
    Population INT,
    Area INT
);

CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating DECIMAL(2,1),
    Country_Id INT,
    Country_name VARCHAR(50),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);

INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331000000, 9833520),
(2, 'Canada', 37700000, 9984670),
(3, 'India', 1380000000, 3287263),
(4, 'Australia', 25400000, 7692024),
(5, 'UK', 67800000, 243610),
(6, 'Germany', 83700000, 357022),
(7, 'France', 65200000, 551695),
(8, 'Japan', 126000000, 377975),
(9, 'Italy', 60400000, 301340),
(10, 'Brazil', 212000000, 8515770);

-- Insert rows into Persons table
INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 331000000, 4.1, 1, 'USA'),
(2, 'Jane', 'Smith', 37700000, 3.9, 2, 'Canada'),
(3, 'Ravi', 'Kumar', 1380000000, 4.7, 3, 'India'),
(4, 'Emily', 'Brown', 25400000, 4.8, 4, 'Australia'),
(5, 'George', 'Wilson', 67800000, 3.6, 5, 'UK'),
(6, 'Anna', 'Schmidt', 83700000, 4.2, 6, 'Germany'),
(7, 'Sophie', 'Martin', 65200000, 3.5, 7, 'France'),
(8, 'Taro', 'Yamamoto', 126000000, 4.9, 8, 'Japan'),
(9, 'Marco', 'Rossi', 60400000, 4.3, 9, 'Italy'),
(10, 'Carlos', 'Silva', 212000000, 3.7, 10, 'Brazil');

SELECT DISTINCT Country_name FROM Persons;

SELECT Fname AS FirstName, Lname AS LastName FROM Persons;

SELECT * FROM Persons WHERE Rating > 4.0;

SELECT * FROM Country WHERE Population > 1000000;

SELECT * FROM Persons WHERE Country_name = 'USA' OR Rating > 4.5;

SELECT * FROM Persons WHERE Country_name IS NULL;

SELECT * FROM Persons WHERE Country_name IN ('USA', 'Canada', 'UK');

SELECT * FROM Persons WHERE Country_name NOT IN ('India', 'Australia');

SELECT * FROM Country WHERE Population BETWEEN 500000 AND 2000000;

select * from country where country_name not like 'c%' ;

