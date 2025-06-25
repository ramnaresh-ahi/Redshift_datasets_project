



WITH Listing As(
    SELECT
        listid as list_id,
        sellerid as seller_id,
        eventid as event_id,
        dateid as date_id,
        numtickets as num_of_ticket,
        priceperticket as price_per_ticket,
        totalprice as total_price,
        listtime as list_time
    FROM
        {{ source('public', 'listing')}}

)

SELECT 
    *
FROM
    Listing