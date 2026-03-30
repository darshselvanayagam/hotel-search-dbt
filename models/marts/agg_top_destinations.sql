{{ config(materialized='table') }}

select
    destination_city,
    count(*) as total_searches,
    avg(stay_nights) as avg_stay_nights,
    sum(results_count) as total_results
from {{ ref('fct_hotel_searches') }}
group by destination_city
order by total_searches desc