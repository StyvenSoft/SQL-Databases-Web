-- first create an inner query

SELECT * 
    FROM Flights
    -- LIMIT 10;

SELECT code 
  FROM airports 
  WHERE elevation > 2000;


SELECT * 
FROM flights 
WHERE origin in (
    SELECT code 
    FROM airports 
    WHERE elevation > 2000);


SELECT * 
FROM flights 
WHERE origin in (
    SELECT code 
    FROM airports 
    WHERE city = 'LOS ANGELES');

SELECT * 
FROM flights 
WHERE origin in (
    SELECT code 
    FROM airports 
    WHERE faa_region = 'ASO');

SELECT a.dep_month,
       a.dep_day_of_week,
       AVG(a.flight_count) AS average_flights
  FROM (
        SELECT dep_month,
              dep_day_of_week,
               dep_date,
               COUNT(*) AS flight_count
          FROM flights
         GROUP BY 1,2,3
       ) a
 GROUP BY 1,2
 ORDER BY 1,2;

SELECT a.dep_month,
       a.dep_day_of_week,
       AVG(a.flight_distance) AS average_distance
  FROM (
        SELECT dep_month,
              dep_day_of_week,
               dep_date,
               sum(distance) AS flight_distance
          FROM flights
         GROUP BY 1,2,3
       ) a
 GROUP BY 1,2
 ORDER BY 1,2;

-- Find the id of the flights whose distance is below average for their carrier.

SELECT id
FROM flights AS f
WHERE distance < (
 SELECT AVG(distance)
 FROM flights
 WHERE carrier = f.carrier);

-- write a query to view flights by origin, flight id, and sequence number

SELECT origin, id,
    (SELECT COUNT(*)
FROM flights f
WHERE f.id < flights.id
AND f.origin=flights.origin) + 1
 AS flight_sequence_number
FROM flights;