-- Oracle liveSQL


-- DROP TABLE ProjectRoomBookings;

CREATE TABLE ProjectRoomBookings
(roomNum INTEGER NOT NULL,
period_7_to_8 VARCHAR(10) DEFAULT 'AVAILABLE',
period_8_to_9 VARCHAR(10) DEFAULT 'AVAILABLE',
period_9_to_10 VARCHAR(10) DEFAULT 'AVAILABLE',
period_10_to_11 VARCHAR(10) DEFAULT 'AVAILABLE',
period_11_to_12 VARCHAR(10) DEFAULT 'AVAILABLE',
period_12_to_13 VARCHAR(10) DEFAULT 'AVAILABLE',
period_13_to_14 VARCHAR(10) DEFAULT 'AVAILABLE',
period_14_to_15 VARCHAR(10) DEFAULT 'AVAILABLE',
period_15_to_16 VARCHAR(10) DEFAULT 'AVAILABLE',
period_16_to_17 VARCHAR(10) DEFAULT 'AVAILABLE',
period_17_to_18 VARCHAR(10) DEFAULT 'AVAILABLE',
PRIMARY KEY (roomNum));

INSERT INTO ProjectRoomBookings (roomNum, period_7_to_8) VALUES (1, 'CSCI585');
INSERT INTO ProjectRoomBookings (roomNum, period_7_to_8) VALUES (2, 'CSCI570');

UPDATE ProjectRoomBookings 
SET period_8_to_9 = 'CSCI585' 
WHERE period_8_to_9 = 'AVAILABLE' and roomNum = 1;

UPDATE ProjectRoomBookings 
SET period_8_to_9 = 'CSCI554' 
WHERE period_8_to_9 = 'AVAILABLE' and roomNum = 1;

SELECT * FROM ProjectRoomBookings;

-- Despite efficiency, I would redesign the table above: roomNum as primary key, I split room working hours into 
-- each one-hour time slots, where it automatically solves the problem that start time is later than end time.
-- For each time period, it starts with default value 'available'.

-- How this system works: Whenever a new room is required, I will insert into the system both the room num and 
-- the time period that this group want to reserve; if a new group want to reserve this room or if this group want
-- to reserve other time periods, I will use 'UPDATE' statement to check if this time period has been scheduled:
-- if so, UPDATE fails; otherwise, request will be updated and the group name would be there instead of 'available'.

