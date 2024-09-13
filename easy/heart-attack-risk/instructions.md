## Analyst Builder
### Heart Attack Risk
#### 2024-09-01

#### Instructuctions
https://www.analystbuilder.com/questions/heart-attack-risk-FKfdn

Dr. Obrien has seen an uptick in heart attacks for his patients over the past few months. He has been noticing some trends across his patients and wants to get ahead of things by reaching out to current patients who are at a high risk of a heart attack.

We need to identify which clients he needs to reach out to and provide that information to Dr. Obrien.

If a patient is over the age of 50, cholesterol level of 240 or over, and weight 200 or greater, then they are at high risk of having a heart attack.

Write a query to retrieve these patients. Include all columns in your output.

As Cholesterol level is the largest indicator, order the output by Cholesterol from Highest to Lowest so he can reach out to them first.
##### Table

tesla_models

| Field       | Data Type |
|-----------------|-------|
| patient_id  |   int     |
| age         |   int     |
| cholesterol |   int     |
| weight      |   int     |


```sql
SELECT
  tesla_model,
  car_price,
  cars_sold,
  production_cost,
  (car_price - production_cost) * cars_sold profit
FROM tesla_models
ORDER BY profit DESC
LIMIT 1;

```

```python
# access datasets as pandas dataframes
import pandas as pd;

# assume tesla_models has been loaded in as a dataframe already
tesla_models['profit'] = (tesla_models['car_price'] - tesla_models['production_cost']) * tesla_models['cars_sold']

# Assumes creating a cell output like Jupyter consistent with Analyst Builder workspace
tesla_models[tesla_models['profit'] == tesla_models['profit'].max()]

```
