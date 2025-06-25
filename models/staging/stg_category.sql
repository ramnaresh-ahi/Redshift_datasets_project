
WITH Category As(
    SELECT
        catid as cat_id,
        catgroup as cat_group,
        catname as cat_name,
        catdesc as cat_desc
    FROM
        {{ source('public', 'category')}}

)

SELECT 
    *
FROM
    Category