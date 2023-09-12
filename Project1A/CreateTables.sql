-- Students Table
CREATE TABLE Students (
    snum INT,
    ssn INT PRIMARY KEY,
    name VARCHAR(10),
    gender VARCHAR(1),
    dob DATETIME,
    c_addr VARCHAR(20),
    c_phone VARCHAR(10),
    p_addr VARCHAR(20),
    p_phone VARCHAR(10)
);

-- Departments Table
CREATE TABLE Departments (
    code INT PRIMARY KEY,
    name VARCHAR(50) UNIQUE,
    phone VARCHAR(10),
    college VARCHAR(20)
);

-- Degrees Table
CREATE TABLE Degrees (
    name VARCHAR(50),
    level VARCHAR(5),
    department_code INT,
    PRIMARY KEY (name, level),
    FOREIGN KEY (department_code) REFERENCES Departments(code)
);

-- Courses Table
CREATE TABLE Courses (
    number INT PRIMARY KEY,
    name VARCHAR(50),
    description VARCHAR(50),
    credithours INT,
    level VARCHAR(20),
    department_code INT,
    FOREIGN KEY (department_code) REFERENCES Departments(code)
);

-- Register Table
CREATE TABLE Register (
    snum INT,
    course_number INT,
    regtime VARCHAR(20),
    grade INT,
    PRIMARY KEY (snum, course_number),
    FOREIGN KEY (snum) REFERENCES Students(snum),
    FOREIGN KEY (course_number) REFERENCES Courses(number)
);

-- Major Table
CREATE TABLE Major (
    snum INT,
    name VARCHAR(50),
    level VARCHAR(5),
    PRIMARY KEY (snum, name, level),
    FOREIGN KEY (snum) REFERENCES Students(snum),
    FOREIGN KEY (name, level) REFERENCES Degrees(name, level)
);

-- Minor Table
CREATE TABLE Minor (
    snum INT,
    name VARCHAR(50),
    level VARCHAR(5),
    PRIMARY KEY (snum, name, level),
    FOREIGN KEY (snum) REFERENCES Students(snum),
    FOREIGN KEY (name, level) REFERENCES Degrees(name, level)
);
