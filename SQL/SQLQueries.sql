--Designing Advanced Data Architectures for Business Intelligence
--Team: 17
--SQL Queries answering the business questions


--Total number of accidents in NYC 

--1 Borough wise split of number of crashes in NYC

select distinct dm.Borough, count(*) as'Count of Collisions'
from dbo.FCT_COLLISION_CRASHES fc inner join dbo.DIM_Borough dm
on fc.borough_sk = dm.borough_sk
group by dm.Borough
order by count(*) DESC

--2 Borough wise and year wise split of crashes in NYC

SELECT * FROM   
(
    SELECT 
        dm.Borough,
		collision_sk,
        year(collision_dt) 'Year'
    FROM 
        dbo.FCT_COLLISION_CRASHES fc inner join
        dbo.DIM_Borough dm
on fc.borough_sk = dm.borough_sk
)t
PIVOT(
    COUNT(collision_sk) 
    FOR Borough IN (
        [BROOKLYN], 
        [QUEENS], 
        [MANHATTAN], 
        [BRONX], 
        [STATEN ISLAND])
) AS pivot_table
order by Year;

--3 How Many NYC Car Accidents Result in an Injury?

select count(collision_id) as 'Car Accidents-Injury'
from dbo.FCT_COLLISION_CRASHES 
where number_of_persons_injured <>0



--4 Which NYC Borough Has the Most Fatal Car Accidents?
select borough, count(collision_sk) as 'Count of fatal accidents'
from dbo.FCT_COLLISION_CRASHES fc inner join dbo.DIM_Borough dm
on fc.borough_sk = dm.borough_sk
where fc.number_of_persons_killed<>0 and borough <>'NO VALUE PROVIDED'
group by borough
order by [Count of fatal accidents] DESC


--5. When do most NYC Car accidents happen?
select distinct collision_hour, count(collision_sk) as 'Collision Hour'
from dbo.FCT_COLLISION_CRASHES
group by collision_hour
order by [Collision Hour] DESC

--6. How Common Are Bicycle Accidents in NYC? 

select count(distinct collision_sk) as 'Count of Collisions involving Bicycle'
from dbo.FCT_VEHICLE_COLLISION fc inner join dbo.Dim_VEHICLE_TYPE dm
on fc.VEHICLE_TYPE_SK = dm.VEHICLE_TYPE_SK
where dm.VEHICLE_TYPE = 'BICYCLE'

--7. How Often Are Pedestrians Involving New York Traffic Accidents?
with cte_1 as
( select cast(count(collision_sk) as DECIMAL (10,2))'a', (
select cast(count(collision_sk) as DECIMAL (10,2)) 
from dbo.FCT_COLLISION_CRASHES 
where number_of_pedestrians_injured<>0 or number_of_pedestrians_killed<>0
)  b
from dbo.FCT_COLLISION_CRASHES
)
select a  'Total No. of Crashes', b 'Crashes Involving Pedestrians', 
cast ((b/a) as DECIMAL (8,2)) as 'Percentage' 
from cte_1

--8. How Many Motorcyclists are Injured or Killed in NYC Accidents?

select sum(number_of_persons_injured) as 'NYC Crashes- Motorcyclists Injured', 
(
select sum(number_of_persons_killed)
from dbo.FCT_COLLISION_CRASHES
where  number_of_motorist_killed<>0
) 'NYC Crashes- Motoryclists Killed'
from dbo.FCT_COLLISION_CRASHES
where number_of_motorist_injured<>0

--9. Are Trucks Involved in Many New York Accidents?

select count(distinct collision_sk) as 'Count of Collisions involving Trucks'
from dbo.FCT_VEHICLE_COLLISION fc inner join dbo.Dim_VEHICLE_TYPE dm
on fc.VEHICLE_TYPE_SK = dm.VEHICLE_TYPE_SK
where dm.VEHICLE_TYPE = 'TRUCK' --or dm.VEHICLE_TYPE = 'TRUC'