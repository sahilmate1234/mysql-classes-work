-- Create the database
CREATE DATABASE DRDO;

USE DRDO;

Drop database DRDO;

-- Table 1: Officers
CREATE TABLE Officer (
  officer_id INT PRIMARY KEY,
  first_name VARCHAR(20),
  last_name VARCHAR(30),
  department VARCHAR(100),
  date_of_joining DATE,
  state VARCHAR(50),
  city VARCHAR(50),
  phone VARCHAR(15),
  email VARCHAR(100)
);

INSERT INTO Officer 
VALUES
(1, 'Arjun',   'Sharma', 'Scientist G',  '2005-06-15', 'Maharashtra', 'Thane',      '+919876543210', 'arjun.sharma@drdo.in'),
(2, 'Priya',   'Mehta',  'Scientist F',  '2008-09-10', 'Karnataka',   'Bengaluru',  '+919123456789', 'priya.mehta@drdo.in'),
(3, 'Ravi',    'Kumar',  'Scientist E',  '2010-01-20', 'Uttar Pradesh','Lucknow',    '+918765432100', 'ravi.kumar@drdo.in'),
(4, 'Ananya',  'Roy',    'Scientist D',  '2012-03-05', 'Tamil Nadu',  'Chennai',    '+917654321098', 'ananya.roy@drdo.in'),
(5, 'Vikram',  'Singh',  'Scientist C',  '2014-07-25', 'Goa',         'Panaji',     '+911234567890', 'vikram.singh@drdo.in'),
(6, 'Leela',   'Patel',  'Scientist B',  '2016-11-30', 'Gujarat',     'Ahmedabad',  '+919998877665', 'leela.patel@drdo.in'),
(7, 'Neha',    'Joshi',  'Scientist A',  '2018-05-12', 'West Bengal', 'Kolkata',    '+919887766554', 'neha.joshi@drdo.in'),
(8, 'Amit',    'Gupta',  'Engineer',    '2019-08-18', 'Delhi',       'New Delhi',  '+919776655443', 'amit.gupta@drdo.in'),
(9, 'Sunita',  'Desai',  'Technician', '2020-02-14', 'Maharashtra', 'Mumbai',     '+919665544332', 'sunita.desai@drdo.in'),
(10,'Rahul',   'Patil',  'Technician', '2021-12-01', 'Rajasthan',   'Jaipur',     '+919554433221', 'rahul.patil@drdo.in');

-- display table data
Select * from Officer;

-- to delete values from table 
truncate table Officer;

-- to delete table
drop table Officer;

-- Table 2: Projects
CREATE TABLE Projects (
  project_id INT PRIMARY KEY,
  project_name VARCHAR(100),
  start_date DATE,
  end_date DATE,
  status VARCHAR(20),
  budget_million DECIMAL(8,2),
  lead_officer_id INT,
  category VARCHAR(50),
  location VARCHAR(50),
  partner_agency VARCHAR(100),
  FOREIGN KEY (lead_officer_id) REFERENCES Officers(officer_id)
);

--  Insert into Projects
INSERT INTO Projects VALUES
(101,'Vayu Kavach','2020-01-01','2023-12-31','Ongoing',120.50,1,'Air Defence','Thane','HAL'),
(102,'Netra Radar','2019-05-15','2022-11-30','Completed',85.00,2,'Surveillance','Bengaluru','ISRO'),
(103,'Trishul Missile','2018-03-20','2021-07-25','Completed',200.00,4,'Missile','Chennai','DRDO'),
(104,'AquaNav','2021-09-10','2024-03-30','Ongoing',150.75,5,'Naval','Panaji','Navy'),
(105,'CyberRakshak','2022-06-01','2025-06-01','Ongoing',95.25,6,'Cybersecurity','Ahmedabad','CERT-In'),
(106,'BioShield','2023-01-15','2026-12-31','Ongoing',60.40,7,'Biotech','Kolkata','DBT'),
(107,'AeroX Engine','2021-11-01','2024-10-31','Ongoing',250.00,8,'Engine','New Delhi','GE'),
(108,'ElecSense','2020-08-05','2023-08-04','Ongoing',45.60,2,'Electronics','Bengaluru','BHEL'),
(109,'AutoArms','2019-02-14','2022-05-30','Completed',180.00,3,'Armament','Lucknow','BEL'),
(110,'NavGuard','2022-10-10','2025-09-30','Ongoing',130.80,5,'Naval','Panaji','DRDO');

-- display table data
Select * from Projects;

-- to delete values from table 
truncate table Projects;

-- to delete table
drop table Projects;


-- Table 3: Facilities
CREATE TABLE Facilities (
  facility_id INT PRIMARY KEY,
  facility_name VARCHAR(100),
  location VARCHAR(50),
  state VARCHAR(50),
  capacity INT,
  type VARCHAR(50),
  established_date DATE,
  head_officer_id INT,
  contact_number VARCHAR(15),
  email VARCHAR(100),
  FOREIGN KEY (head_officer_id) REFERENCES Officers(officer_id)
);

-- Insert into Facilities
INSERT INTO Facilities VALUES
(201,'Aero Lab Thane','Thane','Maharashtra',150,'Lab','1995-04-20',1,'+912123456701','aero.lab@drdo.in'),
(202,'Radar Centre Bengaluru','Bengaluru','Karnataka',200,'Centre','2000-09-15',2,'+912123456702','radar.centre@drdo.in'),
(203,'Missile Plant Chennai','Chennai','Tamil Nadu',300,'Plant','1988-12-01',4,'+912123456703','missile.plant@drdo.in'),
(204,'Naval Workshop Panaji','Panaji','Goa',180,'Workshop','1992-07-07',5,'+912123456704','naval.work@drdo.in'),
(205,'Cyber Lab Ahmedabad','Ahmedabad','Gujarat',100,'Lab','2005-03-22',6,'+912123456705','cyber.lab@drdo.in'),
(206,'Biotech Centre Kolkata','Kolkata','West Bengal',120,'Centre','2010-05-30',7,'+912123456706','bio.centre@drdo.in'),
(207,'Engine Test Bed Delhi','New Delhi','Delhi',160,'Test Facility','1998-11-11',8,'+912123456707','engine.test@drdo.in'),
(208,'Electronics Lab Bengaluru','Bengaluru','Karnataka',140,'Lab','2003-02-18',2,'+912123456708','elec.lab@drdo.in'),
(209,'Armament Plant Lucknow','Lucknow','Uttar Pradesh',190,'Plant','1990-06-25',3,'+912123456709','armament.plant@drdo.in'),
(210,'Naval Dockyard Panaji','Panaji','Goa',220,'Dockyard','1985-10-10',5,'+912123456710','naval.dock@drdo.in');

-- display table data
Select * from Facilities;

-- to delete values from table 
truncate table Facilities;

-- to delete table
drop table Facilities;

-- Table 4: Equipment
CREATE TABLE Equipment (
  equipment_id INT PRIMARY KEY,
  equipment_name VARCHAR(100),
  type VARCHAR(50),
  project_id INT,
  manufacturer VARCHAR(100),
  cost_million DECIMAL(8,2),
  purchase_date DATE,
  warranty_years INT,
  status VARCHAR(20),
  location VARCHAR(50),
  FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);

-- Insert into  Equipment
INSERT INTO Equipment VALUES
(301,'Vayu Radar Mk II','Radar',102,'BEL',2.50,'2019-06-01',5,'Active','Bengaluru'),
(302,'Trishul Launcher','Launcher',103,'HAL',10.00,'2018-04-15',7,'Active','Chennai'),
(303,'AquaSonar X1','Sonar',104,'L&T',5.75,'2021-10-05',3,'Active','Panaji'),
(304,'CyberShield Firewall','Firewall',105,'Cisco',1.20,'2022-07-20',3,'Active','Ahmedabad'),
(305,'BioReactor 200L','Reactor',106,'Biocon',0.90,'2023-02-18',4,'Active','Kolkata'),
(306,'Aero Engine Test Rig','Test Rig',107,'GE',15.00,'2021-12-01',10,'Active','New Delhi'),
(307,'ElecSense Sensor Kit','Sensors',108,'BHEL',0.45,'2020-09-14',2,'Active','Bengaluru'),
(308,'AutoArms Platform','Platform',109,'BEL',8.50,'2019-03-20',6,'Retired','Lucknow'),
(309,'NavGuard Buoy','Buoy',110,'DRDO',2.30,'2022-11-12',9,'Active','Panaji'),
(310,'Vayu UAV','UAV',101,'DRDO',4.75,'2020-02-20',2,'Active','Thane');

-- display table data
Select * from Equipment;

-- to delete values from table 
truncate table Equipment;

-- to delete table
drop table Equipment;

-- Table 5: Research_Publications
 CREATE TABLE Research_Publications (
  pub_id INT PRIMARY KEY,
  title VARCHAR(200),
  publication_date DATE,
  journal VARCHAR(100),
  impact_factor DECIMAL(3,2),
  project_id INT,
  author_officer_id INT,
  co_authors VARCHAR(200),
  doi VARCHAR(100),
  url VARCHAR(200),
  FOREIGN KEY (project_id) REFERENCES Projects(project_id),
  FOREIGN KEY (author_officer_id) REFERENCES Officers(officer_id)
);

-- Research_Publications
INSERT INTO Research_Publications
 VALUES
(401,'Advanced Aerodynamics of UAVs','2021-06-10','Int’l Journal of Aero',3.45,101,1,'Arjun Sharma','10.1001/ajairaero.2021','http://drdo.in/pubs/adv_aero'),
(402,'Radar Signal Processing Improvements','2020-12-05','Electronics Today',2.75,102,2,'Priya Mehta','10.1001/elec.today.2020','http://drdo.in/pubs/radar_sig'),
(403,'Missile Propulsion Advances','2019-08-22','Missile Tech Journal',4.10,103,4,'Ananya Roy','10.1001/mtj.2019','http://drdo.in/pubs/missile_prop'),
(404,'Sonar Algorithms','2022-04-15','Naval Research',3.90,104,5,'Vikram Singh','10.1001/navres.2022','http://drdo.in/pubs/sonar_algo'),
(405,'Next‑gen Cyber Attacks','2023-03-30','Cybersecurity Rev',4.50,105,6,'Leela Patel','10.1001/cyber.rev.2023','http://drdo.in/pubs/cyber_attacks'),
(406,'Biotech in Defense','2024-01-12','BioSec Journal',3.80,106,7,'Neha Joshi','10.1001/biosec.2024','http://drdo.in/pubs/biotech_def'),
(407,'Engine Testing Methodologies','2022-11-20','Aero Systems',3.60,107,8,'Amit Gupta','10.1001/aerosys.2022','http://drdo.in/pubs/engine_test'),
(408,'Sensor Miniaturization','2021-09-01','Elec Smart',2.95,108,2,'Priya Mehta','10.1001/elecsmart.2021','http://drdo.in/pubs/sensor_mini'),
(409,'Automated Weapons Control','2020-05-05','Armament Tech',3.50,109,3,'Ravi Kumar','10.1001/armtech.2020','http://drdo.in/pubs/weapon_ctrl'),
(410,'Naval Surveillance Buoys','2023-07-01','Marine Tech',3.70,110,5,'Vikram Singh','10.1001/martech.2023','http://drdo.in/pubs/nav_buoys');

-- display table data
Select * from Research_Publications;

-- to delete values from table 
truncate table Research_Publications;

-- to delete table
drop table Research_Publications;

-- Table 6: Collaborations
CREATE TABLE Collaborations (
  collab_id INT PRIMARY KEY,
  project_id INT,
  partner_name VARCHAR(100),
  partner_type VARCHAR(50),
  start_date DATE,
  end_date DATE,
  country VARCHAR(50),
  contribution_million DECIMAL(8,2),
  lead_officer_id INT,
  remarks VARCHAR(200),
  FOREIGN KEY (project_id) REFERENCES Projects(project_id),
  FOREIGN KEY (lead_officer_id) REFERENCES Officers(officer_id)
);

-- Insert into collabration
INSERT INTO Collaborations VALUES
(501,101,'HAL','Industry','2020-01-01','2025-12-31','India',50.00,1,'Joint UAV dev'),
(502,102,'ISRO','Government','2019-05-15','2022-11-30','India',40.00,2,'Radar integration'),
(503,103,'ADE','Government','2018-03-20','2021-07-25','India',100.00,4,'Missile test'),
(504,104,'Navy','Defence','2021-09-10','2024-03-30','India',60.00,5,'Naval sensor'),
(505,105,'CERT-In','Government','2022-06-01','2025-06-01','India',30.00,6,'Cyber threat intel'),
(506,106,'DBT','Government','2023-01-15','2026-12-31','India',20.00,7,'Bio materials'),
(507,107,'GE','Industry','2021-11-01','2024-10-31','USA',120.00,8,'Engine R&D'),
(508,108,'BHEL','Industry','2020-08-05','2023-08-04','India',25.00,2,'Electronics research'),
(509,109,'BEL','Industry','2019-02-14','2022-05-30','India',90.00,3,'Armament platform'),
(510,110,'DRDO','Government','2022-10-10','2025-09-30','India',80.00,5,'Naval nav tech');

-- display table data
Select * from Collaborations;

-- to delete values from table 
truncate table Collaborations;

-- to delete table
drop table Collaborations;

-- Table 7: Training_Programs
CREATE TABLE Training_Programs (
  training_id INT PRIMARY KEY,
  title VARCHAR(100),
  officer_id INT,
  facility_id INT,
  start_date DATE,
  end_date DATE,
  topic VARCHAR(100),
  duration_days INT,
  certificate_awarded BOOLEAN,
  remarks VARCHAR(200),
  FOREIGN KEY (officer_id) REFERENCES Officers(officer_id),
  FOREIGN KEY (facility_id) REFERENCES Facilities(facility_id)
);

-- Insert into Training_Programs
INSERT INTO Training_Programs VALUES
(601,'UAV Systems','1','201','2021-02-01','2021-02-10','Aeronautics',10,TRUE,'Completed'),
(602,'Advanced Radar','2','202','2020-06-15','2020-06-25','Radar Tech',10,TRUE,'Completed'),
(603,'Missile Handling','4','203','2019-08-20','2019-08-30','Missile Systems',10,TRUE,'Completed'),
(604,'Naval Sonar','5','204','2022-10-05','2022-10-15','Sonar Ops',10,TRUE,'Completed'),
(605,'Cyber Defense','6','205','2023-03-01','2023-03-10','Cybersecurity',10,TRUE,'Completed'),
(606,'Bio Safety','7','206','2024-01-20','2024-01-30','Bio Safety',10,TRUE,'Scheduled'),
(607,'Engine Testing','8','207','2022-12-10','2022-12-20','Engine Test',10,TRUE,'Completed'),
(608,'Sensor Calibration','2','208','2021-09-10','2021-09-20','Electronics',10,TRUE,'Completed'),
(609,'Armament QA','3','209','2020-05-05','2020-05-15','QA Processes',10,TRUE,'Completed'),
(610,'Naval Dock Ops','5','210','2023-07-01','2023-07-10','Dock Operations',10,TRUE,'Scheduled');

-- display table data
Select * from Training_Programs;

-- to delete values from table 
truncate table Training_Programs;

-- to delete table
drop table Training_Programs;

-- Table 8: Incidents
CREATE TABLE Incidents (
  incident_id INT PRIMARY KEY,
  facility_id INT,
  date_occurred DATE,
  incident_type VARCHAR(50),
  severity VARCHAR(20),
  description VARCHAR(200),
  reported_by INT,
  resolved BOOLEAN,
  resolution_date DATE,
  remarks VARCHAR(200),
  FOREIGN KEY (facility_id) REFERENCES Facilities(facility_id),
  FOREIGN KEY (reported_by) REFERENCES Officers(officer_id)
);

--  Insert into Incidents
INSERT INTO Incidents VALUES
(701,201,'2022-11-12','Fire','High','Minor fire in test rig',1,TRUE,'2022-11-12','Repaired same day'),
(702,202,'2021-06-05','Leak','Medium','Hydraulic oil leak',2,TRUE,'2021-06-06','Replaced seals'),
(703,203,'2020-03-22','Explosion','Critical','Unexpected blast',4,TRUE,'2020-03-23','Plant shutdown'),
(704,204,'2023-01-15','Flood','High','Water ingress',5,TRUE,'2023-01-16','Pumps used'),
(705,205,'2022-07-30','Cyber Attack','Critical','Unauthorized access detected',6,TRUE,'2022-08-01','Firewall updated'),
(706,206,'2024-02-10','Contamination','Medium','Microbe contamination',7,TRUE,'2024-02-11','Cleaning done'),
(707,207,'2021-11-20','Engine Failure','High','Test rig malfunction',8,TRUE,'2021-11-21','Parts replaced'),
(708,208,'2020-09-14','Power Outage','Low','Lab blackout',2,TRUE,'2020-09-14','Generator used'),
(709,209,'2023-05-05','Chemical Spill','High','Acid spill in plant',3,TRUE,'2023-05-06','Neutralized'),
(710,210,'2022-12-22','Dock Damage','Medium','Crane fault',5,TRUE,'2022-12-23','Repair completed');

-- display table data
Select * from Incidents;

-- to delete values from table 
truncate table Incidents;

-- to delete table
drop table Incidents;

-- Table 9: Vendors
CREATE TABLE Vendors (
  vendor_id INT PRIMARY KEY,
  vendor_name VARCHAR(100),
  contact_person VARCHAR(100),
  phone VARCHAR(15),
  email VARCHAR(100),
  address VARCHAR(200),
  city VARCHAR(50),
  state VARCHAR(50),
  country VARCHAR(50),
  service_type VARCHAR(100),
  rating INT
);
-- Insert into  Vendors
INSERT INTO Vendors VALUES
(801,'HAL','Rajesh Kumar','+911122334455','rajesh@hal.in','Bangalore Road','Bengaluru','Karnataka','India','Aerospace',5),
(802,'BEL','Sunil Rao','+911133445566','sunil@bel.in','BEL Estate','Nashik','Maharashtra','India','Electronics',4),
(803,'BHEL','Meera Singh','+911144556677','meera@bhel.in','BHEL Campus','Bhopal','Madhya Pradesh','India','Heavy Equipment',4),
(804,'L&T','Anil Verma','+911155667788','anil@lnt.in','L&T Park','Mumbai','Maharashtra','India','Engineering',5),
(805,'Biocon','Kavita Patel','+911166778899','kavita@biocon.in','Biocon Road','Bangalore','Karnataka','India','Biotech',5),
(806,'Cisco','Rahul Nair','+911177889900','rahul@cisco.com','Tech Street','Hyderabad','Telangana','India','Networking',4),
(807,'GE','John Doe','+911188990011','john.ge@ge.com','GE Complex','New Delhi','Delhi','USA/India','Energy',5),
(808,'Cisco India','Neha Kapoor','+911199001122','neha.kapoor@cisco.in','IT Park','Chennai','Tamil Nadu','India','Networking',4),
(809,'DRDO','Suresh Reddy','+911100112233','suresh@drdo.in','DRDO HQ','New Delhi','Delhi','India','R&D Services',5),
(810,'NewAge Labs','Pooja Jain','+911122233344','pooja@newagelabs.in','Innovation Park','Pune','Maharashtra','India','Startups',4);

-- display table data
Select * from Vendors;

-- to delete values from table 
truncate table Vendors;

-- to delete table
drop table Vendors;

-- Table 10: Budget_Allocations
CREATE TABLE Budget_Allocations (
  alloc_id INT PRIMARY KEY,
  project_id INT,
  fiscal_year VARCHAR(10),
  amount_requested_million DECIMAL(8,2),
  amount_approved_million DECIMAL(8,2),
  date_requested DATE,
  date_approved DATE,
  officers_reviewed VARCHAR(200),
  status VARCHAR(20),
  remarks VARCHAR(200),
  FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);


--  Insert into Budget_Allocations
INSERT INTO Budget_Allocations VALUES
(901,101,'2023-24',130.00,120.50,'2023-01-01','2023-01-15','Arjun Sharma, Priya Mehta','Approved','On track'),
(902,102,'2022-23',90.00,85.00,'2022-02-01','2022-02-10','Priya Mehta','Approved','Completed'),
(903,103,'2021-22',220.00,200.00,'2021-03-01','2021-03-15','Ananya Roy','Approved','Finalized'),
(904,104,'2023-24',160.00,150.75,'2023-04-01','2023-04-12','Vikram Singh','Approved','Ongoing'),
(905,105,'2024-25',100.00,95.25,'2024-05-01','2024-05-20','Leela Patel','Approved','Ongoing'),
(906,106,'2025-26',70.00,60.40,'2025-06-01','2025-06-18','Neha Joshi','Approved','Planned'),
(907,107,'2023-24',260.00,250.00,'2023-07-01','2023-07-15','Amit Gupta','Approved','Ongoing'),
(908,108,'2022-23',50.00,45.60,'2022-08-01','2022-08-10','Priya Mehta','Approved','Ongoing'),
(909,109,'2021-22',200.00,180.00,'2021-09-01','2021-09-12','Ravi Kumar','Approved','Completed'),
(910,110,'2024-25',140.00,130.80,'2024-10-01','2024-10-20','Vikram Singh','Approved','Ongoing');

-- display table data
Select * from Budget_Allocations;

-- to delete values from table 
truncate table Budget_Allocations;

-- to delete table
drop table Budget_Allocations;
