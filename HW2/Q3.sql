-- Oracle liveSQL


-- DROP TABLE projects;

CREATE TABLE projects
(PID VARCHAR(10) NOT NULL,
Step INTEGER NOT NULL,
Status VARCHAR(10) NOT NULL,
PRIMARY KEY (PID, Step));

INSERT INTO projects VALUES ('P100', 0, 'C');
INSERT INTO projects VALUES ('P100', 1, 'W');
INSERT INTO projects VALUES ('P100', 2, 'W');
INSERT INTO projects VALUES ('P201', 0, 'C');
INSERT INTO projects VALUES ('P201', 1, 'C');
INSERT INTO projects VALUES ('P333', 0, 'W');
INSERT INTO projects VALUES ('P333', 1, 'W');
INSERT INTO projects VALUES ('P333', 2, 'W');
INSERT INTO projects VALUES ('P333', 3, 'W');

SELECT PID
FROM projects
WHERE Step = 0 and Status = 'C'
INTERSECT 
SELECT PID 
FROM projects
WHERE Status = 'W'
GROUP BY PID
HAVING COUNT(*) = max(Step);

