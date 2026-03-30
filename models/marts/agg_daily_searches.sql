{{ config(materialized='table') }}

select
    cast(search_timestamp as date) as search_date,
    count(*) as total_searches,
    sum(results_count) as total_results_returned,
    avg(stay_nights) as avg_stay_nights
from {{ ref('fct_hotel_searches') }}
group by 1
order by 1