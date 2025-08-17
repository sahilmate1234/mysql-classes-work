/*
-- ----------------------------------------------------------Assignment-----------------------------------------------------------------------------
PART-A 
1. College:
Students : (student_id, name, email,age,phone )
Courses : ( course_id, course_name, credits )
Enrollments : ( enrollment_id, student_id, course_id, semester )
Professors : ( professor_id, name, department, email ,contact )
Departments : ( department_id, department_name, head_of_department )

2.Hotel :
Hotels : ( hotel_id , name , location , rating )
Rooms : ( room_id , hotel_id , room_type , price , availability )
Guests : ( guest_id , name , email , phone , email )
Reservations : ( reservation_id , guest_id , room_id , check_in , check_out )
Payments : ( payment_id , reservation_id , amount , payment_date ,payment_method )

3.TRAIN
Train: (Trainid,TrainNumber,TrainType,TotalSeats,TrainName)
Station: (stationid,stationname,city,state,Distance KM)
Rote: (Roteid,Trainid,Stationid,StopSequence,Arrival time)
Pasenger: (Passengerid,FirstName,LateName,DateOfBirth,Email)
Booking: (Bookingid,passengerid,trainid,BookingDate,SeatNumber)

4.winery
Winery:(Wineryid,wineryNmae,Region,Phone,Email)
Wine:(Wineid,winename,wineryid,year,type)
customer:customerid,FirstName,Latename,Email,BirthDate)
Order:(orderid,customerid,orderdate,totalammount,status)
Orderitem:oederitemid,orderid,wineid,quntityid,price)

 5.Birthday Party :
Events: ( event_id, name, date, location, host_id )
Guests: ( guest_id, name, email, phone, address )
Invitations: ( invitation_id, event_id, guest_id, rsvp_status )
Vendors: ( vendor_id, name, service_type, contact_info )
Event_Vendors: ( event_vendor_id, event_id, vendor_id, service_details )

6. Hospital :
Patients: ( patient_id, name, dob, gender, contact_info )
Doctors: ( doctor_id, name, specialization, contact_info )
Appointments: ( appointment_id, patient_id, doctor_id, appointment_date,
reason )
Medical_Records: ( record_id, patient_id, doctor_id, diagnosis, treatment )
Billing: ( bill_id, patient_id, amount, billing_date, payment_status )

7. Travel Agent :
Customers: ( customer_id, name, email, phone , address )
Destinations: ( destination_id, location, description )
Packages: ( package_id, destination_id, package_name, price, duration )
Bookings: ( booking_id, customer_id, package_id, booking_date )
Payments: ( payment_id, booking_id, amount, payment_date,
payment_method )

8. E-learning platform :
Courses: ( course_id, title, description, instructor_id )
Instructors: ( instructor_id, name, email, bio )
Students: ( student_id, name, email, enrollment_date )
Enrollments: ( enrollment_id, student_id, course_id, enrollment_date )
Assessments: ( assessment_id, course_id, title, due_date )

9. Cab Services :
Drivers: ( driver_id, name, license_number, phone )
Vehicles: ( vehicle_id, driver_id, make, model, license_plate )
Customers: ( customer_id, name, email, phone )
Rides: ( ride_id, driver_id, customer_id, pickup_location, dropoff_location,
ride_date )
Payments: ( payment_id , ride_id, amount, payment_date, payment_method )

10. Social Media :
Users: ( user_id, username, email, password_hash, join_date )
Posts: ( post_id, user_id, content, post_date )
Comments: ( comment_id, post_id, user_id, content, comment_date )
Likes: ( like_id, post_id, user_id, like_date )
Followers: ( follower_id, user_id, follower_user_id, follow_date )

11.E-Commerce Platform :
Customers: ( customer_id, name, email, address )
Products: ( product_id, name, description, price, stock_quantity )
Orders: ( order_id, customer_id, order_date, total_amount )
Order_Items: ( order_item_id, order_id, product_id, quantity, price )
Payments: ( payment_id, order_id, payment_date, payment_method, amount )

12. Banking System :
Customers: ( customer_id, name, email, phone, address )
Accounts: ( account_id, customer_id, account_type, balance )
Transactions: ( transaction_id, account_id, transaction_date, amount,
transaction_type )
Loans: ( loan_id, customer_id, loan_type, amount, interest_rate, start_date,
end_date )
Payments: ( payment_id, loan_id, payment_date, amount )

13. Human Resources Management :
Employees: ( employee_id, name, email, phone, hire_date, department_id )
Departments: ( department_id, department_name, manager_id )
Salaries: ( salary_id, employee_id, amount, effective_date )
Attendance: ( attendance_id, employee_id, date, status )
Leaves: ( leave_id, employee_id, leave_type, start_date, end_date, status )

14. Inventory Management :
Products: ( product_id, name, description, price, stock_quantity )
Suppliers: ( supplier_id, name, contact_info )
Purchases: ( purchase_id, supplier_id, purchase_date, total_amount )
Purchase_Items: ( purchase_item_id, purchase_id, product_id, quantity, price
)
Stock_Levels: ( stock_level_id, product_id, quantity, last_updated )

15. Online Course Platform :
Courses: ( course_id, title, description, instructor_id )
Instructors: ( instructor_id, name, bio, email )
Students: ( student_id, name, email, registration_date )
Enrollments: ( enrollment_id, student_id, course_id, enrollment_date )
Modules: ( module_id, course_id, title, content )

16. Real Store Managemeent :
Stores: ( store_id, name, location, manager_id )
Employees: ( employee_id, name, position, store_id )
Products: ( product_id, name, price, stock_quantity )
Sales: ( sale_id, store_id, product_id, quantity, sale_date )
Suppliers: ( supplier_id, name, contact_info )

17. Clinic Appointment System :
Patients : ( patient_id, name, dob, gender, contact_info )
Doctors: ( doctor_id, name, specialization, contact_info )
Appointments: ( appointment_id, patient_id, doctor_id, appointment_date,
reason )
Prescriptions: ( prescription_id, appointment_id, medication, dosage, duration
)
Medical_History: ( history_id, patient_id, details, record_date )

18. Gaming Platform :
Users: ( user_id, username, email, password_hash, join_date )
Games: ( game_id, title, genre, release_date )
Scores: ( score_id, user_id, game_id, score, score_date )
Achievements: ( achievement_id, user_id, game_id, achievement_name,
date_earned )
Friends: ( friendship_id, user_id, friend_user_id, friend_since )

19. Theater Booking System :
Shows: ( show_id, title, genre, duration, rating )
Theaters: ( theater_id, name, location, capacity )
Seats: ( seat_id, theater_id, seat_number, row_number )
Bookings:( booking_id, show_id, user_id, seat_id, booking_date )
Users: ( user_id, name, email, phone )

20. fitness center :
Members: (member id , full_name , email , membership_type , JoinDate )
Trainers : ( id , fullname , specialization, email, AvailableHours )
Classes : (Class Id , Class Name , Instructor, Schedule, Capacity )
Equipment : ( id , name , quantity , LastMaintenance , condition )

21. petrol pump :
Fule type: (FuelID INT,FuelName,FuelType,FuelDescription,PricePerLitre)
Customer Table: (Customerid,Name,Vehiclenumber,Phonenumber,RegistrationDate)
Sales Table: (SaleID,CustomerID,FuelID,Quantity,TotalAmount)
Inventory Table: (InventoryID,FuelID,Quantity,LastUpdated DATETIME)
Employee Table : (EmployeeID, Name,Position, Shift,Salary)

22. Bank:
Customer Table: (CustomerID,FirstName,LastName,PhoneNumbr,Email)
Branch Table: (CustomerID,Name,VehicleNumber,PhoneNumber,RegistrationDate) 
Sales Table: (SaleID,CustomerID,FuelID,Quantity,TotalAmount)
Transactions Table: (TransactionID,AccountID INT,TransactionDate,Amount,TransactionType)
Employees Table: ( EmployeeID,FirstName,LastName,Position,BranchID)

23. Bus:
Bus Table: (bus_id,bus_number,bus_plate,capacity)
Driver Table: (driverid,drivername,contact,license,assignedbus)
Passenger Table: (passengerid,firstName,lastname,gender,contact_info) 
Schedule Table: (schedualid,busid,departre,arrivel,rout)
 Booking Table: (bookingid,passengerid,busid,seaat_number,booking_date)
 
24. Land
Land Table:landid,land size,landprice,landaddress,landcity)
Owner Table: (ownerid,firstname,lastname,contact,email)
Broker Table: (brokerid,brokername,brokeraddress,broker_phon_no,broker_commision)
Ownership Table: (owenershipid,landid,owenerid,resetration_date,owner,stetus)
Transaction Table: (transactionid,landid,byerid,brokerid,transaction_date)

25.Amezone
Product Table: (productid,productname,categgory,price,stock_quntity)
Customer Table: (customerid,firstname,lastname,email,phone_number)
Order Table: (orderid,customerid,order_date,total_amount,total_amount)
Supplier Table: (supplierid,suppliername,contactname,contact_email,phone_number)
Employee Table: (employeeid,firstname,lastname,postion,hire_date)

26.myntra
User:(userid,FiestName,LateName,passwordhash)
category:(categoreyid,name,discription,parentid,creatdat)
Product:(Productid,categoreyid,name,price,stock_quntity)
Order:(orderid,userid,orderdate,totalammount,orderstatus)
OrderItem:(Orderitemid,orderid,productid,quntity,price)

27.carwash_center
Customer:customer_id, first_name,last_name,phone,Address)
Service:(service_id,service_name,price,duration_minutes,description) 
Employee:(employee_id,first_name,last_name,phone,role)
Order:(orderid,customerid,seviceid,orderdate,status)
payment:(paymentid,orderid,paymentdate,method,amount)
 
28.RTO
Customer:(coustomerid,name,mobile,email,address)
Vehicle:(vehicleid,customerid,vehiclenumber,vehicletype,description)
Registration:(registrationid,vehicleid,customerid,registrationdate,registrationtype)
DrivingLicense:(licenseid,customerid,licensenumbaer,issuedate,expiredate)
Payment:(paymentid,customerid,paymentdate,amount,discription)

29.Gym management
Member:(memberid,firstname,lastename,dob,gender)
Trainer:(Trainerid,firstname,specialization,phonenumber,email)
Workout Session:(sessionid,membarid,trainerid,timedat)
Equipment:(id,name,purchesedate,conditions,maintence)
payment:(paymentid,memberid,amount,paymentdate,paymentmethode)

30.Theater
Theater:(theaterid,name,loaction,numberofscreen,cotactinfo)
Screen:(screenid,theterid,screennumber,seatingcapacity)
Movie:(id,title,duration,language,relesedate)
seat:(seatid,screenid,seatnumber,seatype,avability)

*/
-- ----------------------------------------------------------------Database	Querise----------------------------------------------------------------------------------------  
-- Part-B

-- To create collage database
CREATE DATABASE Collage;

use Collage;

Drop Database collage;

Create table Students(
student_id INT PRIMARY KEY,
Name VARCHAR(20),
Email VARCHAR(50),
Age INT,
Phone_Nmber VARCHAR(15)
);

-- insert into students
INSERT INTO students(student_id,Name,Email,Age,Phone_Nmber) 
VALUES
(1,'yash','Yash@gmail.com',8,'1236547890'),
(2,'Amar','Amar@gmail.com',22,'1233211223'),
(3,'viraj','viraj@gmail.com',21,'7412589632'),
(4,'Bhavika','Bhavika@gmail.com',23,'1236548975'),
(5,'Anjusha','Anjusha@gmail.com',25,'7893625145'),
(6, 'vicky','vicky@gmail.com',21,'1475289563'),
(7, 'rupesh','george@gmail.com',14,'2586413977'),
(8, 'Harshal', 'harshal@gmail.com',20, '1546987328'),
(9, 'kunal','kunal@gmail.com',15, '1245879637'),
(10, 'pappu','pappu@gmail.com',17,'1520422369');


-- displaye all records from student
SELECT * FROM Students;

-- to remove records from table
truncate table Students;

-- to remove complete records and attributes from table 
drop table Students;


-- to create table Train
CREATE TABLE Train(
Train_id INT PRIMARY KEY,
Station VARCHAR (20), 
rout VARCHAR(40),
passenger INT,
Booking DATE
);

-- INSERT INTO Train 
INSERT INTO Train (Train_id, Station, rout, passenger, Booking)
VALUES
  (1, 'Mumbai Central',      'Mumbai–Chennai Express',      120, '2025-07-15'),
  (2, 'Pune Junction',       'Pune–Hyderabad Mail',          90, '2025-07-16'),
  (3, 'Karjat',              'Karjat–Lonavala Local',       200, '2025-07-17'),
  (4, 'Thane',               'Thane–CST Fast',              150, '2025-07-18'),
  (5, 'Kalyan',              'Kalyan–Igatpuri Passenger',    80, '2025-07-19'),
  (6, 'Dadar',               'Dadar–Kopargaon Express',     110, '2025-07-20'),
  (7, 'Vasai Road',          'Vasai–Panvel Local',          130, '2025-07-21'),
  (8, 'Nashik Road',         'Nashik–Pune Express',         140, '2025-07-22'),
  (9, 'Aurangabad',          'Aurangabad–Mumbai Express',   100, '2025-07-23'),
  (10,'Nagpur',              'Nagpur–Karjat Express',       160, '2025-07-24');
  
    -- Table 3: Bookings
CREATE TABLE Bookings (
booking_id INT PRIMARY KEY,
guest_id INT,
room_id INT,
check_in DATE,
check_out DATE
);

-- insert into Bookings
INSERT INTO Bookings VALUES
(1, 1, 101, '2025-06-01', '2025-06-03'),
(2, 2, 102, '2025-06-04', '2025-06-07'),
(3, 3, 104, '2025-06-02', '2025-06-05'),
(4, 4, 106, '2025-06-06', '2025-06-09'),
(5, 5, 107, '2025-06-01', '2025-06-03'),
(6, 6, 110, '2025-06-10', '2025-06-13'),
(7, 7, 109, '2025-06-04', '2025-06-06'),
(8, 8, 103, '2025-06-05', '2025-06-08'),
(9, 9, 108, '2025-06-11', '2025-06-13'),
(10, 10, 105, '2025-06-03', '2025-06-04');
    
    
-- 4. Creat table hotel 
CREATE TABLE Hotel (
  HotelID INT PRIMARY KEY,            
  Name   VARCHAR(100),  
  location  VARCHAR(50) ,   
  CheckIN DATE,       
  payment DATE 
);

-- insert into hotel
INSERT INTO Hotel (HotelID, Name, Location, CheckIN, Payment)
VALUES
  (1, 'Grand Plaza',      'Mumbai',     '2025-07-10', '2025-07-11'),
  (2, 'Sea View Resort',  'Goa',        '2025-07-12', '2025-07-13'),
  (3, 'Mountain Inn',     'Lonavala',   '2025-07-14', '2025-07-15'),
  (4, 'City Center Hotel','Pune',       '2025-07-16', '2025-07-17'),
  (5, 'Royal Heritage',   'Jaipur',     '2025-07-18', '2025-07-19'),
  (6, 'Lake Side Hotel',  'Udaipur',    '2025-07-20', '2025-07-21'),
  (7, 'Desert Oasis',     'Jaisalmer',  '2025-07-22', '2025-07-23'),
  (8, 'Beachfront Stay',  'Kerala',     '2025-07-24', '2025-07-25'),
  (9, 'Heritage Palace',  'Agra',       '2025-07-26', '2025-07-27'),
  (10,'Eco Retreat',      'Coorg',      '2025-07-28', '2025-07-29');
  
  -- 5 create table Bus 
CREATE TABLE Bus (
  BusID  INT PRIMARY KEY,
  Route  VARCHAR(100),
  Departure  VARCHAR(50),
  Capacity  INT,
  DepartureDate DATE
);  

-- Insert into BUS 10 records 
INSERT INTO Bus (BusID, Route, Departure, Capacity, DepartureDate)
VALUES
  (1, 'Urban A → B',  'Station X',  40, '2025-07-10'),
  (2, 'Metro C → D',  'Station Y',  50, '2025-07-11'),
  (3, 'Rural E → F',  'Station Z',  30, '2025-07-12'),
  (4, 'Urban G → H',  'Station W',  45, '2025-07-13'),
  (5, 'Metro I → J',  'Station V',  55, '2025-07-14'),
  (6, 'Rural K → L',  'Station U',  35, '2025-07-15'),
  (7, 'Express M → N','Station T',  60, '2025-07-16'),
  (8, 'Night O → P',  'Station S',  50, '2025-07-17'),
  (9, 'Urban Q → R',  'Station R',  40, '2025-07-18'),
  (10,'Metro S → T',  'Station Q',  50, '2025-07-19');
  
  
  
  
  


