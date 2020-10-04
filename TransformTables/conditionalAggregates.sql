SELECT COUNT(*) FROM flights;

SELECT COUNT(*) FROM flights 
    WHERE arr_time IS NOT NULL
    AND destination = 'ALT';

SELECT
    CASE
        WHEN elevation < 500 THEN 'Low'
        WHEN elevation BETWEEN 500 AND 1999 THEN 'Medium'
        WHEN elevation >= 2000 THEN 'High'
        ELSE 'Unknown'
    END AS elevation_tier
    , COUNT(*)
FROM airports
GROUP BY 1;

SELECT state, 
    COUNT(CASE WHEN elevation >= 2000 THEN 1 ELSE NULL END) 
    as count_high_elevation_aiports 
FROM airports 
GROUP BY state;


SELECT state, 
    COUNT(CASE WHEN elevation < 1000 THEN 1 ELSE NULL END) 
    as count_low_elevation_airports 
FROM airports 
GROUP BY state;


SELECT origin, sum(distance) as total_flight_distance, sum(CASE WHEN carrier = 'DL' 
    THEN distance ELSE 0 END) as total_united_flight_distance 
FROM flights 
GROUP BY origin;

-- Using the same pattern, find the percentage of flights from Delta by origin (carrier = 'DL')

SELECT origin, (100.0*(sum(CASE WHEN carrier = 'DL' THEN distance ELSE 0 END))/sum(distance)) 
                as percentage_flight_distance_from_delta
FROM flights 
GROUP BY origin;

-- Find the percentage of high elevation airports (elevation >= 2000) by state from the airports table

SELECT state, 100.0 * sum(CASE WHEN elevation >= 2000 THEN 1 ELSE 0 END) / count(*)  
                        as percentage_high_elevation_airports 
FROM airports 
GROUP BY state;


