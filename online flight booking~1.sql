CREATE TABLE FLIGHT(
flight_id VARCHAR(255),
airline_id VARCHAR(255),
from_loaction VARCHAR(255),
to_location VARCHAR(255),
depurture_time VARCHAR(255),
durations VARCHAR(255),
available_seats VARCHAR(255),
price VARCHAR(255),
PRIMARY KEY (flight_id));



CREATE TABLE PASSENGER_PROFILE
(
profile_id VARCHAR (255),
password VARCHAR(255),
first_name VARCHAR(255),
last_name VARCHAR(255),
address VARCHAR(255),
tel_no VARCHAR(255),
email_id VARCHAR(255),
PRIMARY KEY (profile_id)
);
create table TICKET_INFO
(
flight_id VARCHAR(255),
profile_id VARCHAR(255),
booking_date VARCHAR(255),
FOREIGN KEY(profile_id) REFERENCES PASSENGER_PROFILE(profile_id),
FOREIGN KEY(flight_id) REFERENCES FLIGHT(flight_id)
);

insert into Flight(flight_id,airline_id,from_loaction,
to_location,depurture_time,durations,available_seats,price )
values('F1','DK67','kolkata','delhi','2021-06-23','3','60', '$100');
insert into Flight(flight_id,airline_id,from_loaction,
to_location,depurture_time,durations,available_seats,price )
values('S1','wK67','kolkata','pune','2021-06-23','8','90', '$150');
insert into Flight(flight_id,airline_id,from_loaction,
to_location,depurture_time,durations,available_seats,price )
values('A1','EK67','kolkata','bihar','2021-06-23','1','20', '$130');
insert into Flight(flight_id,airline_id,from_loaction,
to_location,depurture_time,durations,available_seats,price )
values('F2','DK67','kolkata','chennai','2021-06-23','3','30', '$129');

drop table flight;

commit;

select * from ticket_info;
select * from PASSENGER_PROFILE;
update FLIGHT set airline_id='VLNP' where flight_id='S1';
commit;
select * from flight;


select * from FLIGHT where from_loaction='kolkata' and to_location='pune' and depurture_time='2021-06-23';
select * from flight;
