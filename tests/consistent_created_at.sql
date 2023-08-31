select * from {{ ref('fct_reviews') }} f
left join {{ ref('dim_listings_cleansed') }} d
on f.listing_id = d.listing_id
where f.review_date < d.created_at