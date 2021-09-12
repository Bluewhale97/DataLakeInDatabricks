# 1. CACHE SELECT (Databricks SQL)

CACHE SELECT * FROM boxes
CACHE SELECT width, length FROM boxes WHERE height=3

# 2. CONVERT TO DELTA

VACUUM delta.`<path-to-table>` RETAIN 0 HOURS

# 3. DESCRIBE HISTORY

DESCRIBE HISTORY table_identifier

FSCK REPAIR TABLE

FSCK REPAIR TABLE table_identifier [DRY RUN]

# 4. GENERATE
GENERATE mode FOR TABLE table_identifier

# 5. OPTIMIZE
OPTIMIZE events

OPTIMIZE events WHERE date >= '2017-01-01'

OPTIMIZE events
WHERE date >= current_timestamp() - INTERVAL 1 day
ZORDER BY (eventType)

# 6. RESTORE

time_travel_version
 { TIMESTAMP AS OF timestamp_expression |
   VERSION AS OF version }
   
# 7. VACUUM

VACUUM [ table_identifier | path] [RETAIN num HOURS]

