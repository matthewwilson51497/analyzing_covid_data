SELECT date_test, AVG(positive_tests_recorded) OVER ( 
ORDER BY date_test ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS moving_average
FROM (
SELECT date_test, SUM(new_results_reported) AS positive_tests_recorded
FROM covid_data
WHERE overall_outcome = 'Positive'
GROUP BY date_test
ORDER BY date_test) AS derived_table
WHERE date_test >= '2021-04-09';
--As we can see in the results, the 7-day moving average is decreasing. This is telling
--us that current vaccine efforts and social distancing in place is working as well as other
--factors that might be at play such as the weather. 
--This may not be completely conclusive as there were results that were inconclusive 
--as well as because there might be positive cases going around that aren't being counted for.
--Also, the daily number of tests performed has decreased between April 2021 and May 2021.
--There may be more cases going around that just are not being tested for.