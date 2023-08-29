with raw_host as (
select * from AIRBNB.RAW.RAW_HOSTS
)
select 
ID AS HOST_ID, 
NAME AS HOST_NAME, 
IS_SUPERHOST, 
CREATED_AT, 
UPDATED_AT
from raw_host
