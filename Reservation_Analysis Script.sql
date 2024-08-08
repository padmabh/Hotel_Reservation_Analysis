create database Reservation_Analysis;
use Reservation_Analysis;
create table reservation(booing_id varchar(25),no_of_children int(10),no_of_adults int(10),no_of_weekend_nights int(10),no_of_week_nights int(10),type_of_meal_plan varchar(25),room_type_reserved varchar(25),
lead_time int(10),arrival_date date,market_segment_type varchar(25),avg_price_per_room double,booking_status varchar(25));

insert into reservation values('B001',2,2,1,2,'Indian Meal','Room_type 1',23,'2021-09-21','Online',860,'Confirmed');
insert into reservation values('B002',1,2,2,1,'SouthIndian Meal','Room_type 3',5,'2021-09-21','Offline',1200,'Confirmed');
insert into reservation values('B003',0,1,2,3,'Chinese Meal','Room_type 4',10,'2022-08-21','Corporate',985.34,'Confirmed');
insert into reservation values('B004',0,2,1,4,'Not Selected','Room_type ',35,'2021-05-21','Offline',1860,'Confirmed');
insert into reservation values('B005',2,3,0,2,'SouthIndian Meal','Room_type 2',50,'2023-07-21','Online',860,'Confirmed');
insert into reservation values('B006',1,2,1,4,'Indian Meal','Room_type 1',23,'2023-09-15','Corporate',860,'Confirmed');
insert into reservation values('B007',1,2,2,5,'SouthIndian Meal','Room_type 1',87,'2023-09-15','Offline',985.34,'Confirmed');
insert into reservation values('B008',1,2,3,0,'Not Selected','Room_type 3',65,'2023-12-21','Online',856.23,'Confirmed');
insert into reservation values('B009',2,1,1,2,'Chinese Meal','Room_type 4',45,'2022-04-21','Offline',860,'Confirmed');
insert into reservation values('B010',0,3,2,1,'Not Selected','Room_type 4',89,'2022-10-21','Online',985.34,'Confirmed');
insert into reservation values('B011',3,2,2,2,'Chinese Meal','Room_type 1',57,'2022-11-18','Offline',789.70,'Confirmed');
insert into reservation values('B012',2,1,1,3,'Indian Meal','Room_type 1',90,'2023-09-18','Online',860.23,'Confirmed');
insert into reservation values('B013',2,1,1,3,'Indian Meal','Room_type 1',90,'2023-09-18','Online',860.23,'Not Confirmed');