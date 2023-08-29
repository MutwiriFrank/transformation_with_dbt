{{
    config(
        materialized = 'view'
    )
}}

WITH src_listings AS (
    SELECT * FROM {{ref('src_listings') }}
)
SELECT 
LISTING_ID,
LISTING_NAME,
ROOM_TYPE,
CASE 
    WHEN MINIMUM_NIGHTS = 0 THEN 1
    ELSE MINIMUM_NIGHTS
END AS MINIMUM_NIGHTS,
HOST_ID,
REPLACE (PRICE_STR, '$')::NUMBER(10,2) AS PRICE, 
CREATED_AT, 
UPDATED_AT
FROM src_listings