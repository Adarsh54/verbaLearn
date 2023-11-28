CREATE TABLE User (
    First_Name NVARCHAR(100) PRIMARY KEY,
    Last_Name NVARCHAR(50),
    Username NVARCHAR(50) UNIQUE,
    Password NVARCHAR(50),
    Role NVARCHAR(50)
);

CREATE TABLE Class (
    Teacher NVARCHAR(50),
    Students Array,
    ClassId NVARCHAR(50) UNIQUE PRIMARY KEY,
    Name NVARCHAR(50)
);

CREATE TABLE Users_Classes (
    FOREIGN KEY (User) REFERENCES User(Username) PRIMARY KEY,
    FOREIGN KEY (ClassId) REFERENCES Class(ClassId),
    FOREIGN KEY (Role) REFERENCES User(Role),
    FOREIGN KEY (Class_name) REFERENCES Class(Last_Name)
);


CREATE TABLE Notes (
    FOREIGN KEY (Class) REFERENCES Class(ClassId),
    Name NVARCHAR(50),
    NoteID NVARCHAR(50) UNIQUE PRIMARY KEY,
    Subject NVARCHAR(50),
    ModelID Array
);

CREATE TABLE Topic (
    Name NVARCHAR(50),
    Description NVARCHAR(50),
    FOREIGN KEY (NoteID) REFERENCES Notes(NoteID)
    QuestionID NVARCHAR(50) UNIQUE PRIMARY KEY
);

CREATE TABLE Assignments (
    Class NVARCHAR(50) UNIQUE,
    User NVARCHAR(50),
    Name NVARCHAR(50),
    AssignmentID NVARCHAR(50) UNIQUE PRIMARY KEY,
    Score NVARCHAR(50)
);

CREATE TABLE Question_Assignment (
    FOREIGN KEY (QuestionID) REFERENCES Topic(QuestionID),
    FOREIGN KEY (AssignmentID) REFERENCES Assignments(AssignmentID),
    weight FLOAT,
    understandingScore NVARCHAR(50)
);