SELECT SUM(new_results_reported) AS total_tests_performed
FROM covid_data;
--The most recent date of tests performed in this dataset is 5/9/21. As of 5/9/21, the
--Total number of tests performed is 427498016. There were no rows with missing values so this
--figure is accurate given the dataset, however there may be missing observations that weren't
--accounted for as some states(ie.Alabama) do not have a value for 'inconclusive' results on certain dates
--as other states do so it is unclear whether or not those observations are counted or appear in the 'positive' or 'negative'
--observations for those respective states and dates. 