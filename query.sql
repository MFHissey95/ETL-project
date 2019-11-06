SELECT * FROM edstats_country

SELECT 
	edstats_country.short_name,
	edstats_country.proper_name,
	edstats_country.long_name,
	edstats_country.two_alpha_code,
	edstats_country.currency_unit,
	edstats_country.region,
	edstats_country.income_group, 
	edstats_country.country_code, 
	edstats_country_series.series_code,
	edstats_series.topic,
	edstats_series.indicator_name,
	edstats_series.short_definition
FROM edstats_country_series
INNER JOIN edstats_country ON edstats_country.country_code=edstats_country_series.country_code
INNER JOIN edstats_series ON edstats_country_series.series_code=edstats_series.series_code;