# -ITCS3160-Spring2021Project
##Introduction

## Description
In this assignment we will be extending the existing database to include a rating system that applys to both drivers and restaurants.

## Use Case

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
