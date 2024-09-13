# access datasets as pandas dataframes
import pandas as pd;

# assume tesla_models has been loaded in as a dataframe already
tesla_models['profit'] = (tesla_models['car_price'] - tesla_models['production_cost']) * tesla_models['cars_sold']

# Assumes creating a cell output like Jupyter consistent with Analyst Builder workspace
tesla_models[tesla_models['profit'] == tesla_models['profit'].max()]
