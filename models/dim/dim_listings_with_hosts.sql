with listing_with_host as (
    select LISTING_ID, LISTING_NAME, ROOM_TYPE, MINIMUM_NIGHTS,  PRICE, 
    L.CREATED_AT as LISTING_CREATED_AT, L.UPDATED_AT AS LISTING_UPDATED_AT, H.HOST_ID, HOST_NAME, IS_SUPERHOST,
     H.CREATED_AT AS HOST_CREATED_AT, H.UPDATED_AT AS HOST_UPDATED_AT
    from  {{ ref('dim_listings_cleansed') }} L
    left join {{ ref('dim_hosts_cleansed') }} H on L.HOST_ID = H.HOST_ID

)
select * from listing_with_host