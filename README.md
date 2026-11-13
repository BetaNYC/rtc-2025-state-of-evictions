# RTC Fact Sheet: 2025 State of Evictions

Analysis of New York State eviction filings and executed evictions, 2020–2025, prepared for [Right to Counsel NYC's](https://www.righttocounselnyc.org/) annual State of Evictions fact sheet. Results are broken down by court, county, NYS Assembly and Senate district, and NYC Council district.

## What's changed

[`WHATS-CHANGED.md`](WHATS-CHANGED.md) lists the changes a reader would notice, newest first, including any correction to a published number. The site shows it at [https://betanyc.github.io/rtc-2025-state-of-evictions/whats-changed.html](https://betanyc.github.io/rtc-2025-state-of-evictions/whats-changed.html).

- `_quarto.yml` builds `whats-changed.qmd` from it before every render (`pre-render`). Edit `WHATS-CHANGED.md`, never `whats-changed.qmd`. `scripts/whats_changed.py` is a copy of BetaNYC's shared script: do not edit it here.
- Never rewrite a published entry. Add a dated `- **Update YYYY-MM-DD:**` line instead. The `What's changed` workflow checks this on every pull request.
- The footer link to the page lives in `radar-footer.html`. Pages rendered before it was added (everything except the What's changed page itself) show the link, and the logo alt text added to `radar-header.html` and `radar-footer.html` at the same time, only after their next full `quarto render`.
- A new entry is dated the day it goes live. If the pull request that adds one merges on a later day, its last commit before merge changes the date to the merge day and re-renders the page (`quarto render whats-changed.qmd`).

## Running

1. Create a `.Renviron` with the OCA L2 database credentials: `PG_DBNAME`, `PG_HOST`, `PG_PORT`, `PG_USER`, `PG_PASSWORD`.
2. Render with `quarto render index.qmd`. Missing R packages are installed on first run.

## Outputs

- `docs/` — the rendered site
- `NYS_Evictions_2020_2025.xlsx` — compiled filings and executions by district – Untracked
