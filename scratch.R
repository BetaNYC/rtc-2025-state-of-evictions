# AD Upstate, 5 year

nysad_upstate_5year_all <- oca_index_5year_geom |> 
  st_join(nysad_upstate |> 
            select(District, Name),
          left = FALSE) |> 
  st_drop_geometry() |> 
  group_by(District) |> 
  summarize(`Eviction Filings` = n(),
            Name = first(Name)) |> 
  arrange(desc(`Eviction Filings`)) 

# AD Downstate, 5 year
nysad_downstate_5year_all <- oca_index_5year_geom |> 
  st_join(nysad_downstate |> 
            select(District, Name),
          left = FALSE) |> 
  st_drop_geometry() |> 
  group_by(District) |> 
  summarize(`Eviction Filings` = n(),
            Name = first(Name)) |> 
  arrange(desc(`Eviction Filings`))

# AD Upstate, 1 year
nysad_upstate_1year_all <- oca_index_1year_geom |> 
  st_join(nysad_upstate |> 
            select(District, Name),
          left = FALSE) |> 
  st_drop_geometry() |> 
  group_by(District) |> 
  summarize(`Eviction Filings` = n(),
            Name = first(Name)) |> 
  arrange(desc(`Eviction Filings`))

# AD Downstate, 1 year
nysad_downstate_1year_all <- oca_index_1year_geom |> 
  st_join(nysad_downstate |> 
            select(District, Name),
          left = FALSE) |> 
  st_drop_geometry() |> 
  group_by(District) |> 
  summarize(`Eviction Filings` = n(),
            Name = first(Name)) |> 
  arrange(desc(`Eviction Filings`))

# SD Upstate, 5 year
nyss_upstate_5year_all <- oca_index_5year_geom |> 
  st_join(nyss_upstate |> 
            select(DISTRICT, NAME),
          left = FALSE) |> 
  st_drop_geometry() |> 
  group_by(DISTRICT) |> 
  summarize(`Eviction Filings` = n(),
            Name = first(NAME)) |> 
  arrange(desc(`Eviction Filings`))

# SD Downstate, 5 year
nyss_downstate_5year_all <- oca_index_5year_geom |> 
  st_join(nyss_downstate |> 
            select(DISTRICT, NAME),
          left = FALSE) |> 
  st_drop_geometry() |> 
  group_by(DISTRICT) |> 
  summarize(`Eviction Filings` = n(),
            Name = first(NAME)) |> 
  arrange(desc(`Eviction Filings`))

# SD Upstate, 1 year
nyss_upstate_1year <- oca_index_1year_geom |> 
  st_join(nyss_upstate |> 
            select(DISTRICT, NAME),
          left = FALSE) |> 
  st_drop_geometry() |> 
  group_by(DISTRICT) |> 
  summarize(`Eviction Filings` = n(),
            Name = first(NAME)) |> 
  arrange(desc(`Eviction Filings`))

# SD Downstate, 1 year
nyss_downstate_1year <- oca_index_1year_geom |> 
  st_join(nyss_downstate |> 
            select(DISTRICT, NAME),
          left = FALSE) |> 
  st_drop_geometry() |> 
  group_by(DISTRICT) |> 
  summarize(`Eviction Filings` = n(),
            Name = first(NAME)) |> 
  arrange(desc(`Eviction Filings`))


#NYCC 5 Year
nycc_5year <- oca_index_5year_geom |> 
  st_join(nyc_council |> 
            select(CounDist, name),
          left = FALSE) |> 
  st_drop_geometry() |> 
  group_by(CounDist) |> 
  summarize(`Eviction Filings` = n(),
            Name = first(name)) |> 
  arrange(desc(`Eviction Filings`))

# NYCC 1 Year
nycc_1year <- oca_index_1year_geom |> 
  st_join(nyc_council |> 
            select(CounDist, name),
          left = FALSE) |> 
  st_drop_geometry() |> 
  group_by(CounDist) |> 
  summarize(`Eviction Filings` = n(),
            Name = first(name)) |> 
  arrange(desc(`Eviction Filings`))



executed_evictions_25_geom <- st_read(con, query = "
WITH executed_evictions_25 AS (
	SELECT
	  DISTINCT i.indexnumberid,
	  w.executiondate
	FROM oca_index i
	JOIN oca_warrants w ON i.indexnumberid = w.indexnumberid
	WHERE w.executiondate >= MAKE_DATE(2025,1,1) 
	  AND w.executiondate <= MAKE_DATE(2025,12,31)
	  AND i.classification IN ('Holdover', 'Non-Payment')
	  AND (i.propertytype = 'Residential' OR i.propertytype IS NULL)
	  AND w.executiondate IS NOT NULL
)
SELECT e.*,
	ST_TRANSFORM(a.geom, 2263)
FROM executed_evictions_25 e
JOIN oca_addresses a on e.indexnumberid = a.indexnumberid
WHERE a.geom IS NOT NULL;")

filings_20_25 |> 
  group_by(filed_year = year(fileddate)) |> 
  summarize(count = n())

filings_20_25 |> 
  group_by(court) |> 
  summarize(count = n()) |> 
  arrange(desc(count))

nrow(filings_20_25_sf)
