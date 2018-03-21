/* answers to aggregation in mysql, all completed */

/* revising aggregations - the count function */
SELECT COUNT(*) FROM CITY WHERE POPULATION > 100000

/* revising aggregations - the sum function */
SELECT SUM(population) FROM CITY WHERE DISTRICT='California';

/* revising aggregations - averages */
SELECT AVG (population) FROM CITY WHERE DISTRICT = 'California';

/* average population */
SELECT FLOOR (AVG(POPULATION)) FROM CITY 

/* japan population */
SELECT SUM(POPULATION) FROM CITY WHERE COUNTRYCODE = 'JPN'

/* population density difference */
SELECT MAX(POPULATION)-MIN(POPULATION) FROM CITY 

/* the blunder */
SELECT CEIL(AVG(salary) - AVG(REPLACE(salary, '0', ''))) FROM EMPLOYEES

/* top earners */
SELECT MONTHS * SALARY AS EARNINGS, COUNT(*)
FROM EMPLOYEE
GROUP BY EARNINGS DESC
LIMIT 1;

/* weather observation station 2 */
SELECT ROUND (SUM(LAT_N), 2), ROUND (SUM(LONG_W), 2)
FROM STATION;

/* weather observation station 13 */
SELECT ROUND(SUM(LAT_N), 4)
FROM STATION
WHERE LAT_N > 38.7880 AND LAT_N<137.2345;
