## Wifi Hotspots in NYC

### A. Data Overview

#### wifi.csv
- [wifi.csv](./data/wifi.csv), which shows all publically available Wi-Fi hotspots in NYC. This data has been extracted and slightly modified from the [NYC Wi-Fi Hotspot Locations data set](https://data.cityofnewyork.us/City-Government/NYC-Wi-Fi-Hotspot-Locations/yjub-udmw), published by NYC Open Data.

```csv
id,borough_id,type,provider,name,location,latitude,longitude,x,y,location_t,remarks,city,ssid,source_id,activated,borocode,borough_name,nta_code,nta,council_district,postcode,boro_cd,census_tract,bctcb2010,bin,bbl,doitt_id,lat_lng
9601,4,Free,SpotOnNetworks,QUEENS BRIDGE - JACOB A. RIIS Settlement House,10-25 41 AVENUE,40.755727,-73.9445830001,999603.226171,214613.274563,Indoor AP - Community Center - Computer Rm,Free - Up to 25 mbs Wi-Fi Service,Queens,Quensbridge Connected,NYC HOUSING AUTHORITY,05/01/2018,4,Queens,QN68,Queensbridge-Ravenswood-Long Island City,26,11101,401,25,25,4433386,4004700100,4746,"(40.755727, -73.9445830001)"
9602,4,Free,SpotOnNetworks,QUEENS BRIDGE - JACOB A. RIIS Settlement House,10-43 41 AVENUE,40.7553329996,-73.9441310002,999728.543834,214469.807003,Indoor AP - Queens Public Library,Free - Up to 25 mbs Wi-Fi Service,Queens,Quensbridge Connected,NYC HOUSING AUTHORITY,05/01/2018,4,Queens,QN68,Queensbridge-Ravenswood-Long Island City,26,11101,401,25,25,4433386,4004700100,4747,"(40.7553329996, -73.9441310002)"
9603,4,Free,SpotOnNetworks,QUEENS BRIDGE - JACOB A. RIIS Settlement House,10-05 41 AVENUE,40.7557510001,-73.9451659997,999441.701232,214621.916935,Indoor AP - North Management Office,Free - Up to 25 mbs Wi-Fi Service,Queens,Quensbridge Connected,NYC HOUSING AUTHORITY,05/01/2018,4,Queens,QN68,Queensbridge-Ravenswood-Long Island City,26,11101,401,25,25,4433386,4004700100,4748,"(40.7557510001, -73.9451659997)"
9604,4,Free,SpotOnNetworks,QUEENS BRIDGE - JACOB A. RIIS Settlement House,10-05 41 AVENUE,40.7557510001,-73.9451659997,999441.701232,214621.916935,Indoor AP - North Management Office,Free - Up to 25 mbs Wi-Fi Service,Queens,Quensbridge Connected,NYC HOUSING AUTHORITY,05/01/2018,4,Queens,QN68,Queensbridge-Ravenswood-Long Island City,26,11101,401,25,25,4433386,4004700100,4749,"(40.7557510001, -73.9451659997)"
9605,4,Free,SpotOnNetworks,QUEENS BRIDGE - JACOB A. RIIS Settlement House,10-05 41 AVENUE,40.7557510001,-73.9451659997,999441.701232,214621.916935,Indoor AP - North Maintenance Area,Free - Up to 25 mbs Wi-Fi Service,Queens,Quensbridge Connected,NYC HOUSING AUTHORITY,05/01/2018,4,Queens,QN68,Queensbridge-Ravenswood-Long Island City,26,11101,401,25,25,4433386,4004700100,4750,"(40.7557510001, -73.9451659997)"
```

Here are few important fields in this data:
- `id` - a unique identifier of each record
- `type` - either `Free` for completely free hotspots, or `Limited Free` for Wi-Fi hotspots with limitations.
- `provider` - the organization providing the Wi-Fi
- `location` - where the hotspot is located
- `remarks` - ad-hoc notes about the hotspot
- `ssid` - the broadcast name that the hotspot shows up as when connecting via Wi-Fi
- `borough_name` - the NYC Borough in which the hotspot is located
- `nta_code` - the code of the neighborhood in which the hotspot is located
- `nta` - the name of the neighborhood in which the hotspot is located
- `postcode` - the zip code of the location of the hotspot


#### neighborhood_populations.csv
- [neighborhood_populations.csv](./data/neighborhood_populations.csv), which contains the populations of each NYC neighborhood.



### neighborhood_populations.csv

The data in `neighborhood_populations.csv` follows the structure indicated in the first few sample lines below. This data has been sourced from NYC Open Data's [New York City Population By Neighborhood Tabulation Areas](https://data.cityofnewyork.us/City-Government/New-York-City-Population-By-Neighborhood-Tabulatio/swpk-hqdp/data) data set.

```csv
borough,year,fips_county_code,nta_code,nta,population
Bronx,2000,5,BX01,Claremont-Bathgate,28149
Bronx,2000,5,BX03,Eastchester-Edenwald-Baychester,35422
Bronx,2000,5,BX05,Bedford Park-Fordham North,55329
Bronx,2000,5,BX06,Belmont,25967
Bronx,2000,5,BX07,Bronxdale,34309
```
