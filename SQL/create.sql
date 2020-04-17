CREATE TABLE flights(
    id SERIAL PRIMARY KEY,
    origin VARCHAR NOT NULL,
    destination VARCHAR NOT NULL,
    duration INTEGER NOT NULL
);


insert into flights(origin, destination, duration) values('New York', 'London',415);
INSERT INTO flights (origin, destination, duration) VALUES ('Shanghai', 'Paris', 760);
INSERT INTO flights (origin, destination, duration) VALUES ('Istanbul', 'Tokyo', 700);
INSERT INTO flights (origin, destination, duration) VALUES ('New York', 'Paris', 435);
INSERT INTO flights (origin, destination, duration) VALUES ('Moscow', 'Paris', 245);
INSERT INTO flights (origin, destination, duration) VALUES ('Lima', 'New York', 455);

SELECT * FROM flights;
SELECT origin, destination FROM flights;
SELECT * FROM flights WHERE id = 3;
SELECT * FROM flights WHERE origin = 'New York';
SELECT * FROM flights WHERE duration > 500;
SELECT * FROM flights WHERE destination = 'Paris' AND duration > 500;
SELECT * FROM flights WHERE destination = 'Paris' OR duration > 500;
SELECT COUNT(*) FROM flights;
SELECT COUNT(*) FROM flights where origin='New York';
SELECT AVG(duration) FROM flights;
select avg(duration) from flights where destination='Paris';
select min(duration) from flights;

select * from flights where origin in('New York','Lima');

SELECT * FROM flights WHERE origin LIKE '%a%';

UPDATE flights SET duration = 430 WHERE origin = 'New York' AND destination = 'London';
UPDATE flights SET duration = duration + 15 WHERE origin = 'New York' AND destination = 'London';

DELETE FROM flights WHERE destination="Tokyo";

SELECT * FROM flights LIMIT 2;

SELECT * FROM flights ORDER BY duration ASC;

SELECT * FROM flights ORDER BY duration ASC LIMIT 3;
SELECT * FROM flights ORDER BY duration DESC LIMIT 3;

SELECT origin,COUNT(*) FROM flights GROUP BY origin;
SELECT origin,COUNT(*) FROM flights GROUP BY origin HAVING COUNT(*)>1;




 