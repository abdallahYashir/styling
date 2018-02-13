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
Business - fields -> id, name, address, description, active
Job - fields -> id, name, description
Images - fields -> id, src, business, type
Image Type - fields -> id, name (profile, background, activities, showcase)
Services -> name, description, price
Schedule - fields -> id, type (absent), date (datestring)
Schedule Type - fields -> id, name
Working Hours - fields -> id, day, active,  time_start, time_end

1 User -> 1 Business


* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
