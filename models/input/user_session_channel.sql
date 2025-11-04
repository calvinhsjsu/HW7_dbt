with raw_data as (
    SELECT
        userId,
        sessionId,
        channel
    FROM {{ source('raw', 'user_session_channel') }}
    WHERE sessionId IS NOT NULL
)

SELECT * FROM raw_data
