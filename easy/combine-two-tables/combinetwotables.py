# access datasets as pandas dataframes
import pandas as pd;

df = employee_name.merge(employee_location,how="left", left_on=employee_name['person_id'], right_on=employee_location['employee_id'])

df[['first_name', 'last_name', 'state']].sort_values(by='first_name')
