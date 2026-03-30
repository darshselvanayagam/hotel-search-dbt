select
    search_id,
    user_id,
    search_timestamp,
    destination_city,
    checkin_date,
    checkout_date,
    datediff('day', checkin_date, checkout_date) as stay_nights,
    adults_count,
    children_count,
    rooms_count,
    device_type,
    platform,
    results_count
from {{ ref('stg_hotel_searches') }}