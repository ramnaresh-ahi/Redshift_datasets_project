
WITH Revenue AS(
    SELECT 
        s.sales_id,
        t.ticket_id,
        s.seller_id,
        s.buyer_id,
        t.event_id,
        s.qty_sold,
        s.price_paid,
        s.commission,
        s.sale_time
    FROM
        {{ ref('ticket_info')}} t
    JOIN
        {{ ref('stg_sales')}} s on s.list_id = t.ticket_id
    JOIN
        {{ ref('stg_users')}} u on s.buyer_id = u.user_id
)

SELECT 
    *
FROM 
    Revenue