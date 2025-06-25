
WITH Ticket_info AS(
    SELECT 
        l.list_id as ticket_id,
        e.event_id,
        l.seller_id,
        l.num_of_ticket,
        l.price_per_ticket,
        l.total_price,
        l.list_time
    FROM
        {{ ref('stg_listing')}} l
    JOIN {{ ref('event_info')}} e using(event_id)

)

SELECT 
    *
FROM
    Ticket_info