-- 1) Find the total number of reservation.
select count(*) as Total_Reservation from reservation;

-- 2) WAQ to find most popular meal against guest.
select type_of_meal_plan,count(*) as count from reservation group by type_of_meal_plan;

-- 3) what is the average price per room for reservation including childrens.
select avg(avg_price_per_room) as Total_avg_price from reservation where no_of_children>0;

-- 4)  how many reservations were made for the year 2022.
select count(*) as reserved_year_2022 from reservation where year(arrival_date)=2022;

-- 5) what is most commonly booked room type.
select room_type_reserved,count(*) as no_of_reservations from reservation 
group by room_type_reserved order by no_of_reservations desc;

-- 6) WAQ to find how many reservations falls on a weekend.
select  count(*) as no_of_weekend_nights from reservation where no_of_weekend_nights>0;

-- 7) what is the highest and lowest lead time for reservations.
select max(lead_time) as highest_lead_time, min(lead_time) as lowest_lead_time from reservation;

-- 8) what is the most common market segment type for reservation.
select market_segment_type,count(*) as common_market_segment from reservation group by market_segment_type;

-- 9) what is the total number of adults and childerns across all reservations.
select sum(no_of_adults) as total_adults,sum(no_of_children) as Total_childrens from reservation;

-- 10) WAQ to find the avg no of weekend nights of reservations invloving childrens.
select round(avg(no_of_weekend_nights),2) as avg_weekend_nights from reservation where no_of_children>0;

-- 11) WAQ to find the how many reservations were made in each month of the year.
select monthname(arrival_date) as month_cnt, count(*) as cnt from reservation group by month_cnt;

-- 12) WAQ to find the average number of nights (both weekday and weekend) spend by guests for each room type.
select room_type_reserved, round(avg(no_of_weekend_nights+no_of_week_nights),0) as avg_weekend_weekday  from reservation
group by room_type_reserved
order by avg_weekend_weekday desc;

-- 13) WAQ to find the reservation involving childrens, what is the most common room type and 
-- what is the avg price for that room type.
select room_type_reserved as room_type_reserved_involving_children, 
count(*) as No_of_reservations,
round(avg(avg_price_per_room),2) as avg_rooms
from reservation
where no_of_children>0 
group by room_type_reserved;



