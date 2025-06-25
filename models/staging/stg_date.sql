

WITH Date As(
    SELECT
        dateid as date_id,
        caldate as cal_date,
        day as day_name,
        week as week_no,
        month as month_name,
        qtr as quater_of_year,
        year as year_num,
        holiday as holiday_bool

    FROM
        {{ source('public', 'date')}}

)

SELECT 
    *
FROM
    Date