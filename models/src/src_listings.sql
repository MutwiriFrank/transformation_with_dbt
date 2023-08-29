with raw_listings as (
    select * from AIRBNB.RAW.RAW_LISTINGS
)
select 
ID as LISTING_ID,
LISTING_URL, 
NAME AS LISTING_NAME, 
ROOM_TYPE, 
MINIMUM_NIGHTS, 
HOST_ID, 
PRICE AS PRICE_STR, 
CREATED_AT, 
UPDATED_AT
from raw_listings
