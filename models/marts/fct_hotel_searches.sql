{{ config(materialized='table') }}

select
    search_id,
    user_id,
    search_timestamp,
    destination_city,
    checkin_date,
    checkout_date,
    stay_nights,
    adults_count,
    children_count,
    rooms_count,
    device_type,
    platform,
    results_count
from {{ ref('int_hotel_search_enriched') }}