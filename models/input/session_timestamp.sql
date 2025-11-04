with raw_data as (
  SELECT
    sessionId,
    ts
  FROM {{ source('raw', 'session_timestamp') }}
  WHERE sessionId IS NOT NULL
)
SELECT * FROM raw_data
