# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
Entities

User (devise) -> id, name, password, business
Business - fields -> id, name, Address, Contact, description, active, BusinessType
Address - fields -> id, address1, address2, zipcode
Contact - fields -> id, phone_no, mobile_no, email, fax
BusinessType - fields -> id, name, description (hairstyling, salon, make up artist)
Images - fields -> id, src, business, ImageType
ImageType - fields -> id, name (profile, background, activities, showcase)
Services -> id, name, description, price, business
Schedule - fields -> id, ScheduleType, date (datestring), business
ScheduleType - fields -> id, name (absent, early, delay)
WorkingHours - fields -> id, day, active,  time_start, time_end, business
Days - fields -> id, name

1 User -> 1 Business
1 Business -> 1 Address
1 Business -> 1 Contact
1 Business ~ BusinessTypes
1 Business ~ Images  
1 Image -> 1 ImageType
1 Business ~ Services
1 Schedule -> 1 Schedule Type
1 Working Hour -> 1 Day


* Database initialization
rails g scaffold BusinessType name:string description: text
rails g scaffold Business name:string address 
rails g scaffold ImageType name:string
rails g scaffold

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
