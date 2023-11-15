# DBMS-ASSIGNMENT-GROUP-7
Assignment
CS 105 Persistent Data Management
2023-24
This assignment has been done by:
Divya Choudhari  - 23112007
Nikita Mane         - 23112023
Snehal Kasare      - 23112039


Entity Relationship Diagram: has been made By Nikita Mane
Schema and Normalisation:Divya Choudhari
Data : Nikita Mane ,Snehal Kasare,Divya Choudhari
Readme File:Divya Choudhari

coach_train is a many-to-one relationship with train.
delay_replace is a one-to-many relationship with train.
driver is a one-to-many relationship with train.
intermediatestations is a many-to-many relationship with train.
maintenance is a one-to-many relationship with train.
passenger is a many-to-many relationship with ticket.
passenger is a one-to-many relationship with ticket_seat_passenger.
route is a one-to-many relationship with train.
schedule is a one-to-many relationship with train.
seat_coach is a many-to-one relationship with coach_train.
seat_coach is a one-to-many relationship with ticket_seat_passenger.
stations is a many-to-many relationship with train.
ticket is a one-to-many relationship with ticket_seat_passenger.
ticket_seat_passenger is a many-to-one relationship with seat_coach.
ticket_seat_passenger is a one-to-one relationship with passenger.
train is a one-to-many relationship with train_opdays.
train_opdays is a one-to-many relationship with travel_agent.

Additional Notes:

The coach_train entity stores information about the coaches on a train.
The delay_replace entity stores information about train delays and replacements(trains).
The intermediatestations entity stores information about the stations that a train passes through.
The maintenance entity stores information about coach maintenance.
The passenger entity stores information about train passengers.
The route entity stores information about the route that a train takes.
The schedule entity stores information about the schedule of a train.
The seat_coach entity stores information about the seats on a train coach.
The stations entity stores information about the stations on a train route.
The ticket entity stores information about train tickets.
The ticket_seat_passenger entity stores information about the passengers who have booked tickets for a particular train seat.
The train entity stores information about trains.
The train_opdays entity stores information about the days that a train is operated.
The travel_agent entity stores information about travel agents






CREATE COMMANDS:
1.create table delay_replace(schedule int,delay_time int,replacement_id int);

Insert statements:
mysql> load data local infile '/home/divya/Desktop/Passenger.csv' into table passenger fields terminated by ',' enclosed by '"' lines terminated by '\n' ignore 1 lines;
mysql> load data local infile '/home/divya/Desktop/ticket_seat_passenger.csv' into table ticket_seat_passenger fields terminated by ',' enclosed by '"' lines terminated by '\n' ignore 1 lines;
mysql> load data local infile '/home/divya/Desktop/ticket.csv' into table ticket fields terminated by ',' enclosed by '"' lines terminated by '\n' ignore 1 lines;
mysql> load data local infile '/home/divya/Desktop/driver.csv' into table driver fields terminated by ',' enclosed by '"' lines terminated by '\n' ignore 1 lines;
