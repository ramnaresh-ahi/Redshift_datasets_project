


WITH Event As(
    SELECT
        eventid as event_id,
        venueid as venue_id,
        catid as cat_id,
        dateid as date_id,
        eventname as event_name,
        starttime as start_time

    FROM
        {{ source('public', 'event')}}

)

SELECT 
    *
FROM
    Event