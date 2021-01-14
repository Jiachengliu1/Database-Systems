-- Oracle liveSQL


-- DROP TABLE bonus;

CREATE TABLE bonus
(InstructorName VARCHAR(25) NOT NULL,
HourlyRate DECIMAL NOT NULL,
ClassName VARCHAR(25) NOT NULL,
ClassSize INTEGER NOT NULL,
PRIMARY KEY (InstructorName, ClassName));

INSERT INTO bonus VALUES ('A', 20.5, 'Python', 20);
INSERT INTO bonus VALUES ('A', 20.5, 'JavaScript', 20);
INSERT INTO bonus VALUES ('A', 20.5, 'Scratch', 15);
INSERT INTO bonus VALUES ('B', 20.5, 'Python', 25);
INSERT INTO bonus VALUES ('B', 20.5, 'JavaScript', 20);
INSERT INTO bonus VALUES ('C', 20.5, 'Python', 10);
INSERT INTO bonus VALUES ('C', 20.5, 'JavaScript', 25);
INSERT INTO bonus VALUES ('C', 20.5, 'C++', 30);
INSERT INTO bonus VALUES ('D', 20.5, 'C', 55);
INSERT INTO bonus VALUES ('D', 20.5, 'Python', 10);

SELECT bonus_amount as highest_bonus_amount
FROM
(SELECT SUM(HourlyRate * ClassSize * 0.1) AS bonus_amount
FROM bonus
GROUP BY InstructorName
ORDER BY 1 DESC) t
WHERE ROWNUM = 1;

