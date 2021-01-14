-- Oracle liveSQL


-- DROP TABLE candidates;

CREATE TABLE candidates
(InstructorName VARCHAR(25) NOT NULL,
Subject VARCHAR(25) NOT NULL,
PRIMARY KEY (InstructorName, Subject));

INSERT INTO candidates VALUES ('Aleph', 'Scratch');
INSERT INTO candidates VALUES ('Aleph', 'Java');
INSERT INTO candidates VALUES ('Aleph', 'Processing');
INSERT INTO candidates VALUES ('Bit', 'Python');
INSERT INTO candidates VALUES ('Bit', 'JavaScript');
INSERT INTO candidates VALUES ('Bit', 'Java');
INSERT INTO candidates VALUES ('CRC', 'Python');
INSERT INTO candidates VALUES ('CRC', 'JavaScript');
INSERT INTO candidates VALUES ('Dat', 'Scratch');
INSERT INTO candidates VALUES ('Dat', 'Python');
INSERT INTO candidates VALUES ('Dat', 'JavaScript');
INSERT INTO candidates VALUES ('Emscr', 'Scratch');
INSERT INTO candidates VALUES ('Emscr', 'Processinng');
INSERT INTO candidates VALUES ('Emscr', 'JavaScript');
INSERT INTO candidates VALUES ('Emscr', 'Python');

SELECT InstructorName as Instructor
FROM candidates
WHERE Subject = 'JavaScript'
INTERSECT
SELECT InstructorName 
FROM candidates
WHERE Subject = 'Scratch'
INTERSECT
SELECT InstructorName
FROM candidates
WHERE Subject = 'Python';

-- This query finds out instructors who can teach all 3 subjects by first figuring out instructors who are 
-- able to teach each required subject (JavaScript, Scratch, Python) respectively and intersecting them. 

