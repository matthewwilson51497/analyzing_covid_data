SELECT state_name, SUM(CASE WHEN overall_outcome= 'Positive' THEN new_results_reported ELSE 0 END)/ cast(SUM(new_results_reported) as decimal) AS positivity_rate
FROM covid_data
WHERE date_test>= '2021-04-09'
GROUP BY state_name
ORDER BY positivity_rate DESC
LIMIT 10;
--as we can see below, the positivity rate does not exceed 11.5% for any states or territories. 
--Michigan, Puerto Rico, and South Dakota came in with the highest rates since 4/9. 
--These positivity rates are a decrease from the positivity rates by state before 4/9, where they
--reach a high of 21%, almost double the highest rate here.