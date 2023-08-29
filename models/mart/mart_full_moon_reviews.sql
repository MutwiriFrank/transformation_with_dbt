{{
    config(
    materialized = 'table'
    )
}}


with src_revies as (
select * from  {{ ref('src_reviews') }}
),
 full_moon as (
select * from {{ ref('seed_full_moon_dates') }}
)
select R.*,
CASE WHEN FM.FULL_MOON_DATE is  null then 'not full moon'
    else 'full moon'
    end as full_moon
from src_revies R
left join full_moon FM 
    on dateadd(day, 1, FULL_MOON_DATE) = TO_DATE(REVIEW_DATE)