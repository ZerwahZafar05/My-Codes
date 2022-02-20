--create database Embroidery_Database_System
create database Embroidery_Database_System
create table CUSTOMER(
c_id int not null primary key,
c_Fname varchar(30),
c_Lname varchar(30),
CNIC varchar(20),
Phone# varchar(20),
Address varchar(256), );

create table ORDERS(
order_id int not null primary key,
order_Receive date,
order_return date,
order_item int,
c_id int ,
foreign key (c_id) references CUSTOMER(c_id), );

create table DESIGN(
design_id int not null primary key,
design_type varchar(50),
Stitches int,
c_id int ,
foreign key (c_id) references CUSTOMER(c_id), );

create table CLOTH(
cloth_id int not null primary key,
Type_of_cloth varchar(50),
Rate money,
c_id int,
foreign key (c_id) references CUSTOMER(c_id), );

create table EMPLOYEE(
emp_id int not null primary key,
emp_Name varchar(50),
emp_salary money,
emp_shift  varchar(50),
emp_ph# varchar(50),
emp_Add varchar(256),
Designation varchar(50),
  Transport varchar(5),
  Medical varchar(5),
  Overtime varchar(5),
  Allowances varchar(5), );

create table OVERTIME(
over_id int not null primary key,
Overtime_day varchar(50),
overtime_per_day money,
emp_id int,
foreign key (emp_id) references EMPLOYEE(emp_id), );

 create table MACHINE(
machine_id int not null primary key,
Company_name varchar(50),
Software varchar(100),
Needles_per_Head int,
Total int,
emp_id int,
design_id int,
cloth_id int,
foreign key (emp_id) references EMPLOYEE(emp_id),
foreign key (design_id) references DESIGN(design_id),
foreign key (cloth_id) references CLOTH(cloth_id), );


create table MACHINE_MAINTENANCE(
machine_maintenance_id int not null primary key,
cost money,
machine_id int,
emp_id int,
foreign key (emp_id) references EMPLOYEE(emp_id),
foreign key (machine_id) references MACHINE(machine_id), ); 

alter table MACHINE_MAINTENANCE
ADD profit money
alter table MACHINE_MAINTENANCE
ADD loss money


insert into CUSTOMER(c_id,c_Fname,c_Lname,CNIC,phone#,Address)
values(1,'Arslan','Khalid','35202-4532167-1','0320-2345165','Manga mandi, Lahore');

insert into CUSTOMER(c_id,c_Fname,c_Lname,CNIC,phone#,Address)
values(2,'Muneeb','Mushtaq','35305-1671234-2','0300-2165876','Pak-patan shareef');

insert into CUSTOMER(c_id,c_Fname,c_Lname,CNIC,phone#,Address)
values(3,'Fazal','Khan','35602-7654321-3','0301-1234567','Wapda town, Lahore');

insert into CUSTOMER(c_id,c_Fname,c_Lname,CNIC,phone#,Address)
values(4,'Salman','Shah','35202-9876543-4','0344-6754231','Mughalpura, Lahore');

insert into CUSTOMER(c_id,c_Fname,c_Lname,CNIC,phone#,Address)
values(5,'Usama','Akram','35208-1278315-5','0308-0164515','Township, Lahore');

insert into CUSTOMER(c_id,c_Fname,c_Lname,CNIC,phone#,Address)
values(6,'Daud','Raza','35202-4756126-6','0311-5678943','Thoker niaz beg, Lahore');

insert into CUSTOMER(c_id,c_Fname,c_Lname,CNIC,phone#,Address)
values(7,'Ehsan','Gul','34306-4532167-7','0324-9045135','Chaburji, Lahore');

insert into CUSTOMER(c_id,c_Fname,c_Lname,CNIC,phone#,Address)
values(8,'Arslan','Irfan','35202-3040617-8','0322-3456789','Town ship, Lahore');

insert into CUSTOMER(c_id,c_Fname,c_Lname,CNIC,phone#,Address)
values(9,'Waleed','Arshad','35252-9060481-9','0346-2356710','Johar town, Lahore');

insert into CUSTOMER(c_id,c_Fname,c_Lname,CNIC,phone#,Address)
values(10,'Musa','NAsir','35701-18273641-0','0324-6234901','Mughal pura, Lahore');





select *from CUSTOMER
insert into ORDERS(order_id,order_Receive,order_return,order_item,c_id)
values(11,'2016-06-12','2016-07-12',20,1);

insert into ORDERS(order_id,order_Receive,order_return,order_item,c_id)
values(12,'2016-03-20','2016-05-15',35,2);

insert into ORDERS(order_id,order_Receive,order_return,order_item,c_id)
values(13,'2016-10-09','2016-11-25',18,3);

insert into ORDERS(order_id,order_Receive,order_return,order_item,c_id)
values(14,'2016-02-12','2016-04-12',50,4);

insert into ORDERS(order_id,order_Receive,order_return,order_item,c_id)
values(15,'2016-03-21','2016-06-12',80,5);

insert into ORDERS(order_id,order_Receive,order_return,order_item,c_id)
values(16,'2015-12-25','2016-03-30',100,6);

insert into ORDERS(order_id,order_Receive,order_return,order_item,c_id)
values(17,'2016-08-24','2016-09-15',25,7);

insert into ORDERS(order_id,order_Receive,order_return,order_item,c_id)
values(18,'2016-09-12','2016-12-15',150,8);

insert into ORDERS(order_id,order_Receive,order_return,order_item,c_id)
values(19,'2016-04-27','2016-06-27',45,9);

insert into ORDERS(order_id,order_Receive,order_return,order_item,c_id)
values(20, '2015-06-28', '2015-10-30', 200, 10);



select *from ORDERS
insert into CLOTH(cloth_id,Type_of_cloth,Rate,c_id)
values(21, 'Silk',1000,1);

insert into CLOTH(cloth_id,Type_of_cloth,Rate,c_id)
values(22, 'Linen',1200,2);

insert into CLOTH(cloth_id,Type_of_cloth,Rate,c_id)
values(23, 'Leather',1340,3);

insert into CLOTH(cloth_id,Type_of_cloth,Rate,c_id)
values(24, 'Lawn',800,4);

insert into CLOTH(cloth_id,Type_of_cloth,Rate,c_id)
values(25, 'Denim',700,5);

insert into CLOTH(cloth_id,Type_of_cloth,Rate,c_id)
values(26, 'Chiffon',1150,6);

insert into CLOTH(cloth_id,Type_of_cloth,Rate,c_id)
values(27, 'Silk',950,7);

insert into CLOTH(cloth_id,Type_of_cloth,Rate,c_id)
values(28, 'Velvet',1400,8);

insert into CLOTH(cloth_id,Type_of_cloth,Rate,c_id)
values(29, 'Wool',600,9);

insert into CLOTH(cloth_id,Type_of_cloth,Rate,c_id)
values(30, 'Cotton',850,10);

select *from CLOTH
insert into DESIGN(design_id,design_Type,Stitches,c_id)
values(31, 'Kora',500,1);

insert into DESIGN(design_id,design_Type,Stitches,c_id)
values(32, 'Zardosi',450,2);

insert into DESIGN(design_id,design_Type,Stitches,c_id)
values(33, 'Tilla',600,3);

insert into DESIGN(design_id,design_Type,Stitches,c_id)
values(34, 'Mukaish',550,4);

insert into DESIGN(design_id,design_Type,Stitches,c_id)
values(35, 'Naqshi',600,5);

insert into DESIGN(design_id,design_Type,Stitches,c_id)
values(36, 'Dabka',700,6);

insert into DESIGN(design_id,design_Type,Stitches,c_id)
values(37, 'Kundan',300,7);

insert into DESIGN(design_id,design_Type,Stitches,c_id)
values(38, 'Kamdani',400,8);

insert into DESIGN(design_id,design_Type,Stitches,c_id)
values(39, 'Zari',650,9);

insert into DESIGN(design_id,design_Type,Stitches,c_id)
values(40, 'Applique',450,10);

select * from DESIGN


insert into EMPLOYEE(emp_id,emp_Name,emp_salary,emp_shift,emp_ph#,emp_Add,Designation,
Transport,Medical,Overtime,Allowances)
values(41,'Rashid Ali ',18000,'Morning','0302-4282562','DHA EME Society , Lahore','Machine Operator','yes','No','Yes','Yes');

insert into EMPLOYEE(emp_id,emp_Name,emp_salary,emp_shift,emp_ph#,emp_Add,Designation,Transport,Medical,Overtime,Allowances)
values(42,'Qasim Raheed ',12000,'Morning','0322-0325062','Thoker niaz beg, Lahore','Helper','yes','Yes','No','Yes');

insert into EMPLOYEE(emp_id,emp_Name,emp_salary,emp_shift,emp_ph#,emp_Add,Designation,Transport,Medical,Overtime,Allowances)
values(43,'Abuzar Ashraf ',18000,'Evening','0305-1232500','Hanjarwal, Lahore','Machine Operator','yes','Yes','Yes','Yes');

insert into EMPLOYEE(emp_id,emp_Name,emp_salary,emp_shift,emp_ph#,emp_Add,Designation,Transport,Medical,Overtime,Allowances)
values(44,'Ali Raza ',12000,'Evening','0320-4321562','Thoker niaz beg, Lahore','Helper','yes','Yes','Yes','Yes');

insert into EMPLOYEE(emp_id,emp_Name,emp_salary,emp_shift,emp_ph#,emp_Add,Designation,Transport,Medical,Overtime,Allowances)
values(45,'Shahid Ashraf',15000,'Evening','0320-4245879','Manga mandi, Lahore','Security Guard','yes','Yes','Yes','Yes');

insert into EMPLOYEE(emp_id,emp_Name,emp_salary,emp_shift,emp_ph#,emp_Add,Designation,Transport,Medical,Overtime,Allowances)
values(46,'Junaid Ali ',15000,'Morning','0346-6574832','Sundar state, Lahore','Security Guard','yes','Yes','Yes','Yes');

insert into EMPLOYEE(emp_id,emp_Name,emp_salary,emp_shift,emp_ph#,emp_Add,Designation,Transport,Medical,Overtime,Allowances)
values(47,'Aqeel Khadim ',50000,'Morning','0302-4652508','Thoker niaz beg, Lahore','Electrical Engineer','No','Yes','No','Yes');

insert into EMPLOYEE(emp_id,emp_Name,emp_salary,emp_shift,emp_ph#,emp_Add,Designation,Transport,Medical,Overtime,Allowances)
values(48,'Salman Younas ',50000,'Morning','0340-9872508','Johar town, Lahore','Machanical Engineer','Yes','Yes','No','Yes');

insert into EMPLOYEE(emp_id,emp_Name,emp_salary,emp_shift,emp_ph#,emp_Add,Designation,Transport,Medical,Overtime,Allowances)
values(49,'Wasif Ali',30000,'Morning','0302-0624652','Chaburji Stop, Lahore','Manager','Yes','Yes','No','Yes');

insert into EMPLOYEE(emp_id,emp_Name,emp_salary,emp_shift,emp_ph#,emp_Add,Designation,Transport,Medical,Overtime,Allowances)
values(50,'Zeeshan Ali',18000,'Morning','0312-1928374','Thoker niaz beg, Lahore','MAchine Operator','No','Yes','Yes','Yes');

select * from Employee

insert into OVERTIME(over_id,Overtime_day,overtime_per_day,emp_id)
values(51,'Sunday',800,41);

insert into OVERTIME(over_id,Overtime_day,overtime_per_day,emp_id)
values(52,'Null',0,42);

insert into OVERTIME(over_id,Overtime_day,overtime_per_day,emp_id)
values(53,'Sunday',800,43);

insert into OVERTIME(over_id,Overtime_day,overtime_per_day,emp_id)
values(54,'Sunday',600,44);

insert into OVERTIME(over_id,Overtime_day,overtime_per_day,emp_id)
values(55,'Sunday',500,45);

insert into OVERTIME(over_id,Overtime_day,overtime_per_day,emp_id)
values(56,'Sunday',500,46);

insert into OVERTIME(over_id,Overtime_day,overtime_per_day,emp_id)
values(57,'Null',0,47);

insert into OVERTIME(over_id,Overtime_day,overtime_per_day,emp_id)
values(58,'Null',0,48);

insert into OVERTIME(over_id,Overtime_day,overtime_per_day,emp_id)
values(59,'Null',0,49);

insert into OVERTIME(over_id,Overtime_day,overtime_per_day,emp_id)
values(60,'Sunday',600,50);

select *from Overtime


insert into MACHINE(machine_id,Company_name,Software,Needles_per_Head,Total,emp_id ,design_id,cloth_id)
values('61','SWM','Embroidery Software','6','144','41','31','21'); 

insert into MACHINE(machine_id,Company_name,Software,Needles_per_Head,Total,emp_id ,design_id,cloth_id)
values('62','SWM','Embroidery Software','6','144','42','32','22'); 

insert into MACHINE(machine_id,Company_name,Software,Needles_per_Head,Total,emp_id ,design_id,cloth_id)
values('63','SWM','Embroidery Software','6','144','43','33','23'); 

insert into MACHINE(machine_id,Company_name,Software,Needles_per_Head,Total,emp_id ,design_id,cloth_id)
values('64','SWM','Embroidery Software','6','144','44','34','24'); 

insert into MACHINE(machine_id,Company_name,Software,Needles_per_Head,Total,emp_id ,design_id,cloth_id)
values('65','SWM','Embroidery Software','6','144','45','35','25'); 

insert into MACHINE(machine_id,Company_name,Software,Needles_per_Head,Total,emp_id ,design_id,cloth_id)
values('66','SWM','Embroidery Software','6','144','46','36','26'); 

insert into MACHINE(machine_id,Company_name,Software,Needles_per_Head,Total,emp_id ,design_id,cloth_id)
values('67','SWM','Embroidery Software','6','144','47','37','27'); 

insert into MACHINE(machine_id,Company_name,Software,Needles_per_Head,Total,emp_id ,design_id,cloth_id)
values('68','SWM','Embroidery Software','6','144','48','38','28'); 

insert into MACHINE(machine_id,Company_name,Software,Needles_per_Head,Total,emp_id ,design_id,cloth_id)
values('69','SWM','Embroidery Software','6','144','49','39','29');
 
insert into MACHINE(machine_id,Company_name,Software,Needles_per_Head,Total,emp_id ,design_id,cloth_id)
values('70','SWM','Embroidery Software','6','144','50','40','30'); 

select *from Machine

select *from Machine_maintenance
insert into MACHINE_MAINTENANCE(machine_maintenance_id,cost,machine_id,emp_id,profit,loss)
values('80','5000','61','41', '100000.0000', '0.0000');

insert into 
MACHINE_MAINTENANCE(machine_maintenance_id,cost,machine_id,emp_id,profit,loss)
values('81','3000','62','42', '150000.0000', '50000.0000');

insert into 
MACHINE_MAINTENANCE(machine_maintenance_id,cost,machine_id,emp_id,profit,loss)
values('82','5000','63','43', '100000.0000', '25000.0000');

insert into 
MACHINE_MAINTENANCE(machine_maintenance_id,cost,machine_id,emp_id,profit,loss)
values('83','4000','64','44', '200000.0000', '0.0000');

insert into 
MACHINE_MAINTENANCE(machine_maintenance_id,cost,machine_id,emp_id,profit,loss)
values('84','4900','65','45', '150000.0000', '15000.0000');

insert into 
MACHINE_MAINTENANCE(machine_maintenance_id,cost,machine_id,emp_id,profit,loss)
values('85','3500','66','46', '100000.0000', '0.0000');

insert into 
MACHINE_MAINTENANCE(machine_maintenance_id,cost,machine_id,emp_id,profit,loss)
values('86','6700','67','47', '78000.0000', '59000.0000')

insert into 
MACHINE_MAINTENANCE(machine_maintenance_id,cost,machine_id,emp_id,profit,loss)
values('87','3500','68','48', '155000.0000', '0.0000');

insert into 
MACHINE_MAINTENANCE(machine_maintenance_id,cost,machine_id,emp_id,profit,loss)
values('88','5000','69','49', '45000.0000', '67000.0000');

insert into 
MACHINE_MAINTENANCE(machine_maintenance_id,cost,machine_id,emp_id,profit,loss)
values('89','4590','70','50', '100000.0000', '5000.0000');
select * from MACHINE_MAINTENANCE

select  orders.order_id,orders.order_Receive,orders.order_return,orders.order_item
from ORDERS

select employee.emp_id as Employee_ID, employee.emp_Name as Employee_Name, employee.Designation, employee.emp_salary as Salary, 
employee.emp_shift as Shift, employee.emp_Ph# as Phone#,employee.emp_Add as Address , overtime.Overtime_day, overtime.Overtime_per_day
from employee,overtime
where

overtime.emp_id=employee.emp_id

select machine.Machine_id, machine.Company_name,machine.Software,
machine.Needles_per_Head, machine.Total,MACHINE_MAINTENANCE.Profit,MACHINE_MAINTENANCE.Loss
from MACHINE,MACHINE_MAINTENANCE
where
machine.machine_id=MACHINE_MAINTENANCE.machine_id

select avg(emp_salary) as Average_Salary_for_Employees
from 
EMPLOYEE


select EMPLOYEE.emp_id as Employee_id ,sum(OVERTIME.overtime_per_day+emp_salary) as MonthlySalary
from employee,OVERTIME
where
overtime.emp_id=EMPLOYEE.emp_id
group by EMPLOYEE.emp_id


select avg(profit) as Average_Profit ,avg(Loss) as Average_Loss
from
MACHINE_MAINTENANCE

select MACHINE.machine_id As MachineNumber,MACHINE.emp_id
from machine
where machine.emp_id in ( select employee.emp_id
from employee
where
employee.emp_id=machine.emp_id )

SELECT        EMPLOYEE.emp_Name AS Employee_Name, EMPLOYEE.emp_id AS Employee_id, MACHINE.machine_id, MACHINE_MAINTENANCE.cost
FROM            EMPLOYEE INNER JOIN
                         MACHINE ON EMPLOYEE.emp_id = MACHINE.emp_id INNER JOIN
                         MACHINE_MAINTENANCE ON EMPLOYEE.emp_id = MACHINE_MAINTENANCE.emp_id AND MACHINE.machine_id = MACHINE_MAINTENANCE.machine_id
WHERE        (MACHINE_MAINTENANCE.cost < 5000)

SELECT        OVERTIME.Overtime_day, EMPLOYEE.emp_shift AS Shift, DESIGN.design_type AS Cloth_Design, MACHINE.machine_id AS Machine_id
FROM            OVERTIME INNER JOIN
                         EMPLOYEE ON OVERTIME.emp_id = EMPLOYEE.emp_id INNER JOIN
                         MACHINE ON EMPLOYEE.emp_id = MACHINE.emp_id INNER JOIN
                         DESIGN ON MACHINE.design_id = DESIGN.design_id
WHERE        (OVERTIME.Overtime_day = 'Sunday')

SELECT  ORDERS.order_id,CUSTOMER.c_Fname
FROM    CUSTOMER INNER JOIn ORDERS ON 
CUSTOMER.c_id = ORDERS.c_id
WHERE   CUSTOMER.c_Fname like  '[sa]%' 


--select sum(sum(employee.salary+OVERTIME.overtime_per_day)+sum(machine_maintenance.cost))
--from employee,MACHINE_MAINTENANCE,OVERTIME

