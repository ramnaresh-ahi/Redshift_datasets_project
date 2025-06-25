

WITH Event_info AS(
    SELECT
        e.event_id as event_id,
        e.event_name as Event_name,    
        c.cat_name as Event_subject,
        c.cat_group as Event_category,
        v.venue_name as Venue,
        v.venue_city as City,
        v.venue_state as State,
        e.start_time as Time,
        v.venue_seats as Seats
    FROM
        {{ ref('stg_category')}} c
    JOIN
        {{ ref('stg_event')}} e using(cat_id)
    JOIN
        {{ ref('stg_venue')}} v using(venue_id)

)

SELECT 
    *
FROM
    Event_info