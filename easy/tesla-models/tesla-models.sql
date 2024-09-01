SELECT
  tesla_model,
  car_price,
  cars_sold,
  production_cost,
  (car_price - production_cost) * cars_sold profit
FROM tesla_models
ORDER BY profit DESC
LIMIT 1;
