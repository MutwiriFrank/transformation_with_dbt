{{
    config(
        materialized = 'view'
    )
}}

WITH SRC_HOST AS (
SELECT * FROM  {{ ref('src_host')}}
)
SELECT 
HOST_ID, 
CASE 
    WHEN HOST_NAME IS NULL THEN 'Anonymous'
    ELSE HOST_NAME
END AS HOST_NAME, 
IS_SUPERHOST, 
CREATED_AT, 
UPDATED_AT
FROM SRC_HOST
