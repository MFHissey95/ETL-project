CREATE TABLE edstats_country (
	country_code TEXT PRIMARY KEY,
	short_name TEXT,
	proper_name TEXT,
	long_name TEXT,
	two_alpha_code TEXT,
	currency_unit TEXT,
	region TEXT,
	income_group TEXT
);

CREATE TABLE edstats_country_series (
	id_unique INT PRIMARY KEY,
	country_code TEXT,
	series_code TEXT
);

CREATE TABLE edstats_series (
	id_unique INT PRIMARY KEY,
	series_code TEXT,
	topic TEXT,
	indicator_name TEXT,
	short_definition VARCHAR(80)
);