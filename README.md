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
The travel_agent entity stores information about travel agents.
Assumptions:
1.1 train operates on s single route while 1 route may have multiple trains at different time.
2. Coaches for a train are fixed to a particular train.
3.1 ticket is for 1 seat and for 1 passenger
4.Seats are fixed to a coach

CREATE COMMANDS:
1.create table delay_replace(schedule int,delay_time int,replacement_id int);
2.create table driver(driver_id int primary key,first_name varchar(20),last_name varchar(20),residence varchar(25),rest_day varchar(25));
3.create table travel_agent(travelagent_id int primary key,name varchar(20));
4.create table passenger(id int primary key,name varchar(20),age int,type varchar(25));
5.create table train(train_id int primary key,name varchar(20),no_of_coaches int,route_id int);
6.create table route(route_id int primary key,start varchar(20),destination varchar(20),distance int,intermediate_stations int);
7.create table seat_coach(seat_id int primary key,coach_id int);
8.create table coach_train(coach_id int primary key,train_id int);
9.create table stations(station_id int primary key,name varchar(20));
10.create table ticket(ticekt_id int primary key,schedule_id int,board_id int,alight_id int);
11.create table ticket_seat_passenger(ticket_id int,seat_id int,passenger_id int,confirm_status varchar(10),travelagent_id int,booking_date date,amount int,discount int,discounted_price int,commission int);
12.create table intermediatestations(route_id int,intermediatestation int,arrival_time time,departure_time time,primary key(route_id,intermediatestation));
13.create table maintenance(maintain_id primary key,coach_id int,previous_date date,next_due date);
14.create table schedule(schedule_id int primary key,train_id int,route_id int,date date,driver_id int,codriver_id int,start_time time ,reach_time time);
15.create table train_opdays(train_id int,operating_days varchar(20));

Insert statements:
1.mysql> load data local infile '/home/divya/Desktop/Passenger.csv' into table passenger fields terminated by ',' enclosed by '"' lines terminated by '\n' ignore 1 lines;
2. mysql> load data local infile '/home/divya/Desktop/Ticket_seat_passenger.csv' into table ticket_seat_passenger fields terminated by ',' enclosed by '"' lines terminated by '\n' ignore 1 lines;
3.mysql> load data local infile '/home/divya/Desktop/Ticket.csv' into table ticket fields terminated by ',' enclosed by '"' lines terminated by '\n' ignore 1 lines;
4.mysql> load data local infile '/home/divya/Desktop/Triver.csv' into table driver fields terminated by ',' enclosed by '"' lines terminated by '\n' ignore 1 lines;
5.mysql> load data local infile '/home/divya/Desktop/Train.csv' into table train fields terminated by ',' enclosed by '"' lines terminated by '\n' ignore 1 lines;
6. mysql> load data local infile '/home/divya/Desktop/Coach_train.csv' into table coach_train fields terminated by ',' enclosed by '"' lines terminated by '\n' ignore 1 lines;
 7.mysql> load data local infile '/home/divya/Desktop/Seat_coach.csv' into table seat_coach fields terminated by ',' enclosed by '"' lines terminated by '\n' ignore 1 lines;
 8.mysql> load data local infile '/home/divya/Desktop/Schedule.csv' into table schedule fields terminated by ',' enclosed by '"' lines terminated by '\n' ignore 1 lines;
 9.mysql> load data local infile '/home/divya/Desktop/Maintenance.csv' into table maintenance fields terminated by ',' enclosed by '"' lines terminated by '\n' ignore 1 lines;10.
 10.mysql> load data local infile '/home/divya/Desktop/Travel_agent.csv' into table travel_agent fields terminated by ',' enclosed by '"' lines terminated by '\n' ignore 1 lines;
11.mysql> load data local infile '/home/divya/Desktop/Route.csv' into table route fields terminated by ',' enclosed by '"' lines terminated by '\n' ignore 1 lines;
12.mysql> load data local infile '/home/divya/Desktop/Train_opdays.csv' into table train_opdays fields terminated by ',' enclosed by '"' lines terminated by '\n' ignore 1 lines;
13.mysql> load data local infile '/home/divya/Desktop/Delay_replace.csv' into table delay_replace fields terminated by ',' enclosed by '"' lines terminated by '\n' ignore 1 lines;
14.mysql> load data local infile '/home/divya/Desktop/intermediatestations.csv' into table intermediatestations fields terminated by ',' enclosed by '"' lines terminated by '\n' ignore 1 lines;
15.mysql> load data local infile '/home/divya/Desktop/Stations.csv' into table stations fields terminated by ',' enclosed by '"' lines terminated by '\n' ignore 1 lines;


