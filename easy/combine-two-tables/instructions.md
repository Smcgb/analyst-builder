## Analyst Builder
### Combine Two Tables
#### 2024-09-01

#### Instructuctions
Join these two tables together to return the first name, last name, and state for each person.

If there is no matching employee in the location table the state should be Null for that person.

Order the output alphabetically on their first names.
##### Table

employee_name

| Field       | Data Type |
|-----------------|-------|
| person_id  |   int      |
| first_name |   text     |
| last_name  |   text     |

employee_location

| Field       | Data Type   |
|-----------------|---------|
| employee_id  |   int      |
| city         |   text     |
| state        |   text     |
| state_id     |   text     |

```sql
SELECT 
  en.first_name
  ,en.last_name
  ,el.state 
FROM employee_name as en 
LEFT JOIN employee_location as el 
  ON el.employee_id = en.person_id
ORDER BY
en.first_name ASC;

```

```python
# access datasets as pandas dataframes
import pandas as pd;

df = employee_name.merge(employee_location,how="left", left_on=employee_name['person_id'], right_on=employee_location['employee_id'])

df[['first_name', 'last_name', 'state']].sort_values(by='first_name')

```
