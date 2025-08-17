-- Create Database
CREATE DATABASE HospitalDB;
USE HospitalDB;

-- Patients Table
CREATE TABLE Patients (
    Patient_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Contact_Number VARCHAR(15)
);

-- Doctors Table
CREATE TABLE Doctors (
    Doctor_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Specialty VARCHAR(50),
    Contact_Number VARCHAR(15),
    Department VARCHAR(50)
);

-- Appointments Table
CREATE TABLE Appointments (
    Appointment_ID INT PRIMARY KEY,
    Patient_ID INT,
    Doctor_ID INT,
    Appointment_Date DATE,
    Reason VARCHAR(100),
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID),
    FOREIGN KEY (Doctor_ID) REFERENCES Doctors(Doctor_ID)
);

-- Medications Table
CREATE TABLE Medications (
    Medication_ID INT PRIMARY KEY,
    Patient_ID INT,
    Medicine_Name VARCHAR(50),
    Dosage VARCHAR(20),
    Start_Date DATE,
    End_Date DATE,
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID)
);

-- Bills Table
CREATE TABLE Bills (
    Bill_ID INT PRIMARY KEY,
    Patient_ID INT,
    Amount DECIMAL(10,2),
    Bill_Date DATE,
    Status VARCHAR(20),
    FOREIGN KEY (Patient_ID) REFERENCES Patients(Patient_ID)
);

-- Insert Patients
INSERT INTO Patients VALUES
(101, 'John Smith', 32, 'Male', '9876543210'),
(102, 'Sarah Lee', 28, 'Female', '8765432109'),
(103, 'Michael Brown', 45, 'Male', '7654321098'),
(104, 'Emily Davis', 35, 'Female', '6543210987'),
(105, 'David Wilson', 50, 'Male', '9123456780'),
(106, 'Sophia Martinez', 29, 'Female', '9012345678'),
(107, 'James Taylor', 40, 'Male', '9988776655'),
(108, 'Olivia Harris', 26, 'Female', '8899776655'),
(109, 'Daniel White', 55, 'Male', '7788665544'),
(110, 'Emma Johnson', 31, 'Female', '6677554433');

-- Insert Doctors
INSERT INTO Doctors VALUES
(201, 'Dr. Robert Clark', 'Cardiologist', '9871111111', 'Cardiology'),
(202, 'Dr. Linda Scott', 'Dermatologist', '9872222222', 'Dermatology'),
(203, 'Dr. William Adams', 'Orthopedic', '9873333333', 'Orthopedics'),
(204, 'Dr. Patricia Lewis', 'Neurologist', '9874444444', 'Neurology'),
(205, 'Dr. Charles Hall', 'Pediatrician', '9875555555', 'Pediatrics'),
(206, 'Dr. Jennifer Allen', 'Oncologist', '9876666666', 'Oncology'),
(207, 'Dr. Thomas Young', 'Surgeon', '9877777777', 'Surgery'),
(208, 'Dr. Barbara King', 'ENT Specialist', '9878888888', 'ENT'),
(209, 'Dr. Steven Wright', 'Psychiatrist', '9879999999', 'Psychiatry'),
(210, 'Dr. Mary Green', 'Gynecologist', '9870000000', 'Gynecology');

-- Insert Appointments
INSERT INTO Appointments VALUES
(301, 101, 201, '2025-08-01', 'Chest Pain'),
(302, 102, 202, '2025-08-02', 'Skin Allergy'),
(303, 103, 203, '2025-08-03', 'Knee Pain'),
(304, 104, 204, '2025-08-04', 'Headache'),
(305, 105, 205, '2025-08-05', 'Child Checkup'),
(306, 106, 206, '2025-08-06', 'Cancer Screening'),
(307, 107, 207, '2025-08-07', 'Surgery Consultation'),
(308, 108, 208, '2025-08-08', 'Ear Infection'),
(309, 109, 209, '2025-08-09', 'Depression Therapy'),
(310, 110, 210, '2025-08-10', 'Pregnancy Checkup');

-- Insert Medications
INSERT INTO Medications VALUES
(401, 101, 'Atorvastatin', '10mg daily', '2025-08-01', '2025-08-30'),
(402, 102, 'Cetirizine', '5mg daily', '2025-08-02', '2025-08-15'),
(403, 103, 'Ibuprofen', '400mg twice', '2025-08-03', '2025-08-20'),
(404, 104, 'Paracetamol', '500mg thrice', '2025-08-04', '2025-08-10'),
(405, 105, 'Vitamin Syrup', '10ml daily', '2025-08-05', '2025-08-25'),
(406, 106, 'Chemotherapy', 'Cycle 1', '2025-08-06', '2025-09-06'),
(407, 107, 'Antibiotics', '500mg daily', '2025-08-07', '2025-08-21'),
(408, 108, 'Ear Drops', '2 drops twice', '2025-08-08', '2025-08-15'),
(409, 109, 'Antidepressant', '20mg daily', '2025-08-09', '2025-09-09'),
(410, 110, 'Iron Tablets', '200mg daily', '2025-08-10', '2025-09-10');

-- Insert Bills
INSERT INTO Bills VALUES
(501, 101, 5000.00, '2025-08-01', 'Paid'),
(502, 102, 2000.00, '2025-08-02', 'Unpaid'),
(503, 103, 3500.00, '2025-08-03', 'Paid'),
(504, 104, 1500.00, '2025-08-04', 'Paid'),
(505, 105, 2500.00, '2025-08-05', 'Unpaid'),
(506, 106, 8000.00, '2025-08-06', 'Paid'),
(507, 107, 10000.00, '2025-08-07', 'Unpaid'),
(508, 108, 1800.00, '2025-08-08', 'Paid'),
(509, 109, 4500.00, '2025-08-09', 'Unpaid'),
(510, 110, 2200.00, '2025-08-10', 'Paid');

-- Display Records
SELECT * FROM Patients;
SELECT * FROM Doctors;
SELECT * FROM Appointments;
SELECT * FROM Medications;
SELECT * FROM Bills;
