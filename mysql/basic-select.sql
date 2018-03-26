/* answers to basic select in mysql, all completed (finished on March 3rd)*/

/* revising the select query 1*/
SELECT * FROM CITY WHERE POPULATION > 100000 AND COUNTRYCODE = 'USA'

/* revising the select query 2*/
SELECT NAME FROM CITY WHERE POPULATION > 120000 AND COUNTRYCODE = 'USA'

/* select all*/
SELECT * FROM CITY

/* select by id*/
SELECT * FROM CITY WHERE ID = '1661'

/* japanese cities' attributes */
SELECT * FROM CITY WHERE COUNTRYCODE = 'JPN'

/* japanese cities' names */
SELECT NAME FROM CITY WHERE COUNTRYCODE = 'JPN'

/* weather observation station 1 */
SELECT CITY, STATE FROM STATION

/* weather observation station 3 */
SELECT DISTINCT CITY FROM STATION WHERE ID%2=0

/* weather observation station 4 */
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION

/* weather observation station 5 */
SELECT DISTINCT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH (CITY) ASC, CITY LIMIT 1;
SELECT DISTINCT CITY, LENGTH (CITY) FROM STATION ORDER BY LENGTH(CITY) DESC, CITY LIMIT 1;

/* weather observation station 6 */
SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '^[aeiouAEIOU]'

/* weather observation station 7 */
SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '[aeiouAEIOU]$'

/* weather observation station 8 */
SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '^[aiueoAIUEO]' AND CITY REGEXP '[aiueo]$'

/* weather observation station 9 */
SELECT DISTINCT CITY FROM STATION WHERE CITY NOT REGEXP '^[aiueoAIUEO]'

/* weather observation station 10 */
SELECT DISTINCT CITY FROM STATION WHERE CITY NOT REGEXP '[aiueoAIUEO]$'

/* weather observation station 11 */
SELECT DISTINCT CITY FROM STATION WHERE CITY NOT REGEXP '^[aiueoAIUEO]' OR CITY NOT REGEXP '[aiueoAIUEO]$'

/* weather observation station 12 */
SELECT DISTINCT CITY FROM STATION WHERE CITY NOT REGEXP '^[aiueoAIUEO]' AND CITY NOT REGEXP '[aiueoAIUEO]$'

/* higher than 75 marks */
SELECT NAME FROM STUDENTS WHERE MARKS > 75
ORDER BY RIGHT (NAME,3), ID ASC

/* employee names */
SELECT NAME FROM EMPLOYEE ORDER BY NAME

/* employee salaries */
SELECT NAME FROM EMPLOYEE WHERE MONTHS < 10 AND SALARY > 2000
ORDER BY EMPLOYEE_ID
