-- https://www.analystbuilder.com/questions/combine-two-tables-LTaKJ
-- Join these two tables together to return the first name, last name, and state for each person.
-- If there is no matching employee in the location table the state should be Null for that person.
-- Order the output alphabetically on their first names.


-- works for all flavors on Analyst Builder
SELECT 
  en.first_name
  ,en.last_name
  ,el.state 
FROM employee_name as en 
LEFT JOIN employee_location as el 
  ON el.employee_id = en.person_id
ORDER BY
en.first_name ASC;
