select
    search_id,
    user_id,
    search_timestamp,
    lower(destination_city) as destination_city,
    checkin_date,
    checkout_date,
    adults_count,
    children_count,
    rooms_count,
    lower(device_type) as device_type,
    lower(platform) as platform,
    results_count
from {{ source('raw', 'hotel_searches') }}