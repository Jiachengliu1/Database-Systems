-- Oracle liveSQL


-- DROP TABLE enrollment;

CREATE TABLE enrollment
(SID INTEGER NOT NULL,
ClassName VARCHAR(25) NOT NULL,
Grade VARCHAR(10),
PRIMARY KEY (SID, ClassName));

INSERT INTO enrollment VALUES (123, 'Processing', 'A');
INSERT INTO enrollment VALUES (123, 'Python', 'B');
INSERT INTO enrollment VALUES (123, 'Scratch', 'B');
INSERT INTO enrollment VALUES (662, 'Java', 'B');
INSERT INTO enrollment VALUES (662, 'Python', 'A');
INSERT INTO enrollment VALUES (662, 'JavaScript', 'A');
INSERT INTO enrollment VALUES (662, 'Scratch', 'B');
INSERT INTO enrollment VALUES (345, 'Scratch', 'A');
INSERT INTO enrollment VALUES (345, 'JavaScript', 'B');
INSERT INTO enrollment VALUES (345, 'Python', 'A');
INSERT INTO enrollment VALUES (555, 'Python', 'B');
INSERT INTO enrollment VALUES (555, 'JavaScript', 'B');
INSERT INTO enrollment VALUES (213, 'JavaScript', 'A');

SELECT ClassName, COUNT(SID) AS Total
FROM enrollment
GROUP BY ClassName
ORDER BY 2 DESC;

