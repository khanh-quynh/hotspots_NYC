CREATE TABLE hotspots (
    id INT PRIMARY KEY,
    borough_id INT,
    type VARCHAR(50),
    provider VARCHAR(255),
    name VARCHAR(255),
    location VARCHAR(255),
    latitude REAL,
    longitude REAL,
    x REAL,
    y REAL,
    location_t VARCHAR(255),
    remarks VARCHAR(255),
    city VARCHAR(50),
    ssid VARCHAR(255),
    source_id VARCHAR(255),
    activated DATE,
    borocode INT,
    borough_name VARCHAR(25),
    nta_code VARCHAR(25),
    nta VARCHAR(255),
    council_district INT,
    postcode INT,
    boro_cd INT,
    census_tract INT,
    bctcb2010 INT,
    bin INT,
    bbl INT,
    doitt_id INT,
    lat_lng VARCHAR(50)
);

CREATE TABLE populations (
    borough VARCHAR(25),
    year INT,
    fips_country_code INT,
    nta_code VARCHCAR(25),
    nta VARCHAR(155),
    population INT
    );

.import ./data/wifi.csv hotspots
.import ./data/neighborhood_populations.csv populations 

.headers on


--- 1
SELECT postcode AS zip_code, COUNT(id) AS total_hotspots
FROM hotspots
GROUP BY zip_code
ORDER BY total_hotspots DESC
LIMIT 5;


--- 2
SELECT name, location AS address, postcode AS zip_code
FROM hotspots
WHERE type='Free' AND provider='ALTICEUSA' AND borough_name='Bronx'
ORDER BY zip_code DESC;


--- 3
SELECT borough_name, COUNT(id) AS total_free_wifi
FROM hotspots
WHERE type='Free'
GROUP BY borough_name;


--- 4
SELECT DISTINCT(year)
FROM populations;

SELECT COUNT(DISTINCT(hotspots.id)) AS total_hotspots, populations.population, populations.year AS year
FROM hotspots
INNER JOIN populations ON hotspots.nta_code = populations.nta_code
WHERE hotspots.nta = 'Bay Ridge' AND populations.year = 2010;


--- 5
SELECT populations.borough, SUM(DISTINCT(populations.population)) AS total_population, COUNT(DISTINCT(hotspots.id)) AS total_wifi
FROM populations 
INNER JOIN hotspots ON populations.borough = hotspots.borough_name
WHERE hotspots.type="Free" AND populations.year=2010
GROUP BY populations.borough;


--- 6
SELECT DISTINCT(nta)
FROM hotspots
WHERE nta_code NOT IN (SELECT DISTINCT(nta_code) FROM populations);


--- 7. 
SELECT location, provider, remarks
FROM hotspots 
WHERE type='Free' AND postcode=10001;
