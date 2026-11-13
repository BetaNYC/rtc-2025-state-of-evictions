# RTC Fact Sheet: 2025 State of Evictions

Analysis of New York State eviction filings and executed evictions, 2020–2025, prepared for [Right to Counsel NYC's](https://www.righttocounselnyc.org/) annual State of Evictions fact sheet. Results are broken down by court, county, NYS Assembly and Senate district, and NYC Council district.

## Running

1. Create a `.Renviron` with the OCA L2 database credentials: `PG_DBNAME`, `PG_HOST`, `PG_PORT`, `PG_USER`, `PG_PASSWORD`.
2. Render with `quarto render index.qmd`. Missing R packages are installed on first run.

## Outputs

- `docs/` — the rendered site
- `NYS_Evictions_2020_2025.xlsx` — compiled filings and executions by district – Untracked
