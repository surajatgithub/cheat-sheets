# Date
### Date Time Format
- Dates in the m/d/y or d-m-y formats are disambiguated by looking at the separator between the various components: if the separator is a slash (/), then the American m/d/y is assumed; whereas if the separator is a dash (-) or a dot (.), then the European d-m-y format is assumed.

- To avoid potential ambiguity, it's best to use ISO 8601 (YYYY-MM-DD) dates or DateTime::createFromFormat() when possible.