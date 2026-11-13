# What's changed

This page lists the changes to the analysis of New York State eviction filings and executed evictions from 2020 to 2025, prepared for Right to Counsel NYC's 2025 State of Evictions fact sheet, that a reader would notice: new sections, changes to how cases are counted, and corrections when we published something wrong. Newest first.

- **History begins:** 2026-01-23. The analysis was first published on this date. Corrections made before it may be missing.
- **Data refresh:** Not on a schedule. Each time the report is rebuilt, its counts are run again from the state court eviction records, so totals can move slightly from one version to the next.

To report a bug in this report, or to ask for a new feature, [open an issue on GitHub](https://github.com/BetaNYC/rtc-2025-state-of-evictions/issues).

## 2026-11-12: New page listing what has changed in this report

- **Tags:** Site
- **What changed:** This page is new. It lists the changes to the report that a reader would notice, and says plainly when we published a number that turned out to be wrong. A link to it will appear in the footer of every page the next time the report is rebuilt.
- **More detail:** [The change history in this repository](https://github.com/BetaNYC/rtc-2025-state-of-evictions/commits/main)

## 2026-09-13: New design, and a table of all counts for every district

- **Tags:** Site, Data
- **What changed:** The report moved to the Civic Innovation Lab's new design and gained a section that puts every count for each Assembly, Senate and City Council district in one table. The counts were run again, and the statewide total of filings from 2020 to 2025 is now 849,342. The share of filings with a location rose from 97.45% to 99.5%. The earlier version of the analysis is still online on its own page.
- **More detail:** [The earlier version](docs/archive/index_v1.html) · [The change](https://github.com/BetaNYC/rtc-2025-state-of-evictions/commit/4b7b73a)

## 2026-04-29: Counts run again

- **Tags:** Data
- **What changed:** The report was rebuilt and its counts were run again. The statewide total of filings from 2020 to 2025 went from 849,449 to 849,786, and the number of evictions executed in 2025 went from 14,187 to 14,458.
- **More detail:** [Pull request 6](https://github.com/BetaNYC/rtc-2025-state-of-evictions/pull/6)

## 2026-02-06: Districts outside New York City are now chosen by map

- **Tags:** Data
- **What changed:** The Assembly and Senate districts listed as outside New York City used to be picked by district number. They are now the districts that do not touch the city's borough boundaries, which moved some districts from one list to the other. The counts were also run again, and the statewide total of filings went from 849,090 to 849,449.
- **More detail:** [Pull request 3](https://github.com/BetaNYC/rtc-2025-state-of-evictions/pull/3) · [Pull request 4](https://github.com/BetaNYC/rtc-2025-state-of-evictions/pull/4) · [Pull request 5](https://github.com/BetaNYC/rtc-2025-state-of-evictions/pull/5)

## 2026-01-26: New York City counts included commercial evictions

- **Tags:** Data, Correction
- **What changed:** From January 23 to January 26, 2026, the counts for New York City included commercial eviction cases as well as residential ones. They now leave commercial cases out. The statewide total of filings from 2020 to 2025 went from 884,193 to 849,090.
- **If you used the old numbers:** Any count you copied from the report between January 23 and January 26, 2026 that includes New York City, including the statewide totals, counts commercial cases too and is too high. Use the counts in the report now. Outside New York City the data does not make it possible to separate commercial cases, so those counts still include them, as the report notes.
- **More detail:** [Issue 1](https://github.com/BetaNYC/rtc-2025-state-of-evictions/issues/1) · [Pull request 2](https://github.com/BetaNYC/rtc-2025-state-of-evictions/pull/2)

## 2026-01-23: The analysis is published

- **Tags:** Site, Data
- **What changed:** The first version of the analysis went online. It counts eviction filings in New York State from 2020 to 2025 by court and by State Assembly and Senate district, executed evictions in 2025, and evictions in the winter months.
- **More detail:** [The report](https://betanyc.github.io/rtc-2025-state-of-evictions/) · [The change](https://github.com/BetaNYC/rtc-2025-state-of-evictions/commit/9a81fc6)
