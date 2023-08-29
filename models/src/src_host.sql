with raw_host as (
select * from {{ source('airbnb', 'hosts') }}
select 
ID AS HOST_ID, 
NAME AS HOST_NAME, 
IS_SUPERHOST, 
CREATED_AT, 
UPDATED_AT
from raw_host
