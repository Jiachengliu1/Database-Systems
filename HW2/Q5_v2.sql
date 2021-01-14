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

SELECT InstructorName as Instructor
FROM candidates
GROUP BY InstructorName
HAVING (SELECT COUNT(DISTINCT Subject) FROM subjects) = SUM(CASE WHEN Subject IN (SELECT Subject FROM subjects) THEN 1
                                                                 ELSE 0
                                                            END);

-- This query uses CASE statement to assign value 1 to each required subject (JavaScript, Scratch, Python),
-- and 0 to other subjects. It then sums up values grouped by instructor name, a total value of 3 indicates
-- that this instructor is able to teach all 3 subjects that we want and thus selected.


