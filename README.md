# -ITCS3160-Spring2021Project
Group Members: Joseph Mauney, Marco Busselli, Richard Fry
## Introduction
With the rise of food delivery services and concern for Covid safety, Universities are taking a new approach in restricting visitor traffic by implementing a campus controlled food delivery service. The university must approve the drivers and restaurants that are available in the app.

## Description
In this assignment we are extending an existing database (provided by student group “Mavericks”) on a Delivery service that is controlled by the campus that restricts drivers to be approved delivery personnel, which currently only allows for students and has a cap of 8 drivers. Our goal is to implement a rating system into the database.

## Use Case
![Use-Case](https://github.com/Skubby99/-ITCS3160-Spring2021Project/blob/main/imgs/BetterUseCase.PNG)
## Business Rules
#### Driver
* A driver can have multiple ratings 
* A driver can have multiple deliveries 
* A driver must be a student 
* There can only be 8 approved drivers
* A driver can have many vehicles 
* A driver must be approved
#### Restaurant
* A Restaurant must be approved by the university inorder to be included into database
* A Restaurant can have multiple ratings
#### Delivery
* A delivery must have a $5 flat fee
* Must be to an approved location
* A delivery can have a drop-off point
* An individual delivery is tied to one and only one person for the order
#### Vehicle
* A vehicle can make many deliveries 
* A vehicle can have many drivers
#### Person
* A person orders food one to many times
* Multiple persons can be a staff 
* Multiple persons can be a student
* Multiple persons can be a faculty 
#### Order
* An order can belong to one and only one delivery
* An order can belong to one and only one driver
* An order can belong to one and only person 
* An order can belong to only one location
*An order can be called from only one restaurant
* An order contains the total price and delivery charge
* An order contains the driver and delivery time
* An order has a unique ID that ties to the id for the order at the restaurant
#### Ratings
* A rating’s score must be between 1 and 5
* A rating can have one and only one driver
* A rating can have one and only one restaurant 
#### Faculty 
* A faculty can be one and only one person 
#### Staff
* A staff can be one and only one person
#### Student
* Multiple students can be drivers
* A student can be one and only one person



## EERD
![EERD](https://github.com/Skubby99/-ITCS3160-Spring2021Project/blob/main/imgs/EERDProj1.PNG)



## Updated EERD with implemeneted Rating Table
![EERD-with-Rating](https://github.com/Skubby99/-ITCS3160-Spring2021Project/blob/main/imgs/EERDUPDATE.png)

## Test Data being used in Rating
![Rating-Test-Data](https://github.com/Skubby99/-ITCS3160-Spring2021Project/blob/main/imgs/TestData.PNG)

## Rating SQL file with Data
![Rating-SQl-file](https://github.com/Skubby99/-ITCS3160-Spring2021Project/blob/main/Project/RatingSQL.sql)

## Stored Procedures
Min/Max/Avg Scores for Drivers
```
Delimiter //
CREATE PROCEDURE MinMaxAvgScoresDriver()
BEGIN
Select d.driver_id, CAST(AVG(r.DriverScore) AS DECIMAL(10,2)) as Average_Driver_Score, max(r.DriverScore) as Maximum_Driver_Score, MIN(r.DriverScore) as Minimum_Driver_Score
From driver as d
Inner join ratings as r
On d.driver_id = r.driver_id
Group By driver_id
Order by d.driver_id;
END //
Delimiter ;
```

Min/Max/Avg Scores for Restaurnats
```
Delimiter //
CREATE PROCEDURE MinMaxAvgScoresRestaurant()
BEGIN
Select re.restaurant_id, re.restaurant_name, CAST(AVG(r.RestScore) AS DECIMAL(10,2)) as Average_Restaurant_Score, max(r.RestScore) as Maximum_Restaurant_Score, MIN(r.RestScore) as Minimum_Restaurant_Score
From restaurant as re
Inner join ratings as r
On re.restaurant_id = r.restaurant_id
Group By restaurant_id
Order by re.restaurant_id;
END //
Delimiter ;
```
## Advanced Views
Queries the scores for restaurnts that are open from 9am - 10pm
```
Select re.restaurant_name, r.RestScore as Restuarant_Score 
From ratings as r
Inner Join restaurant as re 
On re.restaurant_id = r.restaurant_id
Where r.restaurant_id IN (Select restaurant_id From restaurant Where schedule = "9am -10pm");
```

Queries drive's student information and number of orders they have taken
```
Select d.driver_id, s.major, s.graduation_year, count(o.order_id) as Number_of_Orders
FROM driver as d
INNER join orders as o
ON o.driver_id = d.driver_id
Inner join student as s
On s.student_id = d.student_id
GROUP By driver_id
ORDER by Number_of_Orders DESC;
```
## Indexes
* Indexes provide a fast way to fetch table data 
* they can be used with both tables and individual columns
* allows for the use of explain to showcase the reduction in time

Indexes in our project:
```
Ratings (RestScore, DriverScore)
Driver (driver_id)
Restaurant (restaurant_id, restaurant_name)
```
driver_id is the only working index

restaurant_id is called but does not get picked up by SQL instead using the Primary Key
