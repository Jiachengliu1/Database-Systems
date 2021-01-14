-- Oracle liveSQL


-- DROP TABLE candidates;
-- DROP TABLE subjects;

CREATE TABLE candidates
(InstructorName VARCHAR(25) NOT NULL,
Subject VARCHAR(25) NOT NULL,
PRIMARY KEY (InstructorName, Subject));

CREATE TABLE subjects
(Subject VARCHAR(23) NOT NULL,
PRIMARY KEY (Subject));

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

INSERT INTO subjects VALUES ('JavaScript');
INSERT INTO subjects VALUES ('Scratch');
INSERT INTO subjects VALUES ('Python');

SELECT InstructorName AS Instructor
FROM candidates
WHERE Subject IN (SELECT Subject FROM subjects)
GROUP BY InstructorName
HAVING (SELECT COUNT(DISTINCT Subject) FROM subjects) = COUNT(DISTINCT Subject);

-- This query first filters out rows where instructor teaches subjects other than JavaScript, Scratch, and Python.
-- It then groups by instructor name and counts how many subjects within JavaScript, Scratch, and Python this 
-- instructor is able to teach, and checks if it is equal to 3, where 3 indicates capable of teaching all 3 subjects.


