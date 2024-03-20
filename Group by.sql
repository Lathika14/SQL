use lathika;
create table travel_details(passenger_id int,passenger_name varchar(20),
gender varchar(20),flight_no int,passenger_source varchar(50),passenger_destination varchar(40));
describe travel_details;
insert into travel_details values (1,"Lathika","female",401,"chennai","bengaluru"),(2,"Kumar","male",402,"bengaluru","thailand"),
(3,"Guru","male",201,"chennai","mumbai"),(4,"vimal","male",201,"chennai","delhi"),(5,"kumar","female",2901,"delhi","mumbai"),
(6,"rajesh","male",201,"chennai","mumbai"),(7,"Guru","male",301,"chennai","mumbai");
select * from travel_details;
select * from student;
select name,avg(fees) from student group by name;
select dept,sum(fees) from student group by dept;
select dept,count(id) from student group by dept;
select gender,count(gender) from travel_details group by gender;
select name,avg(fees) from student group by name having avg(fees)>15000;
select dept,avg(fees) from student group by dept having avg(fees) >50000;
select dept,avg(fees) from student group by dept;
select flight_no,count(flight_no) from travel_details group by flight_no;
select flight_no,count(flight_no) from travel_details group by flight_no having count(flight_no)>1 ;
select * from travel_details limit 5 offset 3 ;
select * from student limit 2;
select * from student limit 2 offset 12;
select * from student limit 2,2;
