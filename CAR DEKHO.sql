CREATE SCHEMA CAR;
USE CAR;
#----READ DATA----
select *from car_dekho;

#---TOTAL CARS: TO GET A COUNT OF TOTAL RECORDS---
SELECT COUNT(*)
FROM car_dekho;

# The Manager Asked the Employe . how many cars will be availale in 2023?
SELECT COUNT(*)
FROM car_dekho
where year = "2023";

# The manager asked the employee how many cars is available in 2020,2021,2022?
SELECT COUNT(*)
FROM car_dekho
where year in (2020,2021,2022)
group by year;

---# client asked me to print the total of all car by year . I don't see all the details.--
SELECT YEAR, COUNT(*)
FROM car_dekho
group by year;

---#client  asked to car dealer agent .How many diesel car will there e in 2020--
SELECT COUNT(*)
FROM car_dekho
where year = 2020 and fuel = "diesel";

#client requested a car dealer agent . How many petrol cars will there be in 2020--
SELECT COUNT(*)
FROM car_dekho
where year = 2020 and fuel = "petrol";

#---The Manger told the employe to give a print of all the fuel cars (petrol, diesel and CNG) come by all year----
SELECT year,count(*)
FROM car_dekho
WHERE fuel = "petrol"
GROUP BY YEAR;

SELECT year,count(*)
FROM car_dekho
WHERE fuel = "diesel"
GROUP BY YEAR;

SELECT year,count(*)
FROM car_dekho
WHERE fuel = "CNG"
GROUP BY YEAR; 

#Manager saide there were more than 100 cars in a given year , which year had more than 100 cars--
SELECT YEAR , COUNT(*)
FROM car_dekho 
GROUP BY YEAR 
HAVING COUNT(*)>100;

#THE manager said to the employee all cars count details between 2015 and 2023; we need a complete list---
select count(*)
FROM car_dekho
WHERE YEAR BETWEEN 2015 AND 2023;

#THE manager said to the employee all cars  details between 2015 and 2023; we need a complete list---
select *
FROM car_dekho
WHERE YEAR BETWEEN 2015 AND 2023;