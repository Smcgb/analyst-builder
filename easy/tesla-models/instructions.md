## Analyst Builder
### Tesla Models
#### 2024-09-01

#### Instructuctions
https://www.analystbuilder.com/questions/tesla-models-soJdJ

Tesla just provided their quarterly sales for their major vehicles.

Determine which Tesla Model has made the most profit.

Include all columns with the "profit" column at the end. 

##### Table

tesla_models

| Field           | Data Type |
|-----------------|-----------|
| tesla_model     |   text    |
| car_price       |   int     |
| cars_sold       |   int     |
| Production_cost |   int     |


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
