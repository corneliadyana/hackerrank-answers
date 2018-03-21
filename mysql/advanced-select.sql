/* answers to advanced select in mysql, not yet completed */

/* type of triangle */
SELECT 
CASE 
WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
WHEN A = B AND B = C THEN 'Equilateral'
WHEN A = B OR A = C OR B = C THEN 'Isosceles'
ELSE 'Scalene'
END
FROM TRIANGLES;

/* binary tree nodes */
SELECT N,
CASE
WHEN P is NULL THEN 'Root'
WHEN N in (SELECT P FROM BST) THEN 'Inner'
ELSE 'Leaf'
END
FROM BST
ORDER by N;
